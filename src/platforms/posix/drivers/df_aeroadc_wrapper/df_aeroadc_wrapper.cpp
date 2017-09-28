/*
 *df_aeroadc_wrapper.cpp
 *
 * Created on: Sep. 14, 2017
 * Author:  Tallen
 *
 *
 */

#include <px4_log.h>
#include <string.h>
#include "aeroadc/AEROADC.hpp"

using namespace  DriverFramework;
extern "C"{ __EXPORT int df_aeroadc_wrapper_main(int argc, char* argv[]); }


static class AeroAdc *instance = nullptr;

int df_aeroadc_wrapper_main(int argc, char *argv[])
{
    int ret;

    if (argc < 2) {
        PX4_WARN("usage: <start/stop>");
        return PX4_ERROR;
    }

    if (!strcmp(argv[1], "start")) {
        if (instance) {
            PX4_WARN("already started");
            return PX4_OK;
        }

        instance = new AeroAdc(ADC_DEVICE_PATH);

        if (!instance) {
            PX4_WARN("not enough memory");
            return PX4_ERROR;
        }

        if (instance->init() != PX4_OK) {
            delete instance;
            instance = nullptr;
            PX4_WARN("init failed");
            return PX4_ERROR;
        }

        return PX4_OK;

    } else if (!strcmp(argv[1], "stop")) {
        if (!instance) {
            PX4_WARN("already stopped");
            return PX4_OK;
        }

        delete instance;
        instance = nullptr;
        return PX4_OK;

    } else if (!strcmp(argv[1], "test")) {
        if (!instance) {
            PX4_ERR("start first");
            return PX4_ERROR;
        }

        struct adc_msg_s adc_msgs[ADC_MAX_CHAN];

        ret = instance->devRead((char *)&adc_msgs, sizeof(adc_msgs));

        if (ret < 0) {
            PX4_ERR("ret: %s (%d)\n", strerror(ret), ret);
            return ret;

        } else if (ret != sizeof(adc_msgs)) {
            PX4_ERR("incomplete read: %d expected %d", ret, sizeof(adc_msgs));
            return ret;
        }

        for (int i = 0; i < ADC_MAX_CHAN; ++i) {
            PX4_INFO("chan: %d; value: %d", (int)adc_msgs[i].am_channel,
                 adc_msgs[i].am_data);
        }

        return PX4_OK;

    } else {
        PX4_WARN("action (%s) not supported", argv[1]);

        return PX4_ERROR;
    }

    return PX4_OK;

}


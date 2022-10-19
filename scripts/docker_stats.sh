#!/bin/bash

docker stats app app2 app3 \
	upload_app upload2_app upload3_app upload4_app upload5_app \
	celery_worker_1 celery_worker_2 celery_worker_3 celery_worker_4 celery_worker_5  \
	nginx postgres rabbitmq

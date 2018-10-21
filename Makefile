build:
	docker image build -t jupyter_scipy_custom .

run:
	docker run --rm \
		-p 8888:8888 \
		-v $(PWD)/notebooks:/home/jovyan/work \
		--name jupyter_benchmark_mice \
		jupyter_scipy_custom

run-jupyterlab:
	docker run --rm \
		-e JUPYTER_ENABLE_LAB=yes \
		-p 8888:8888 \
		-v $(PWD)/notebooks:/home/jovyan/work \
		--name jupyter_benchmark_mice \
		jupyter_scipy_custom

stop:
	docker container stop jupyter_spark_custom

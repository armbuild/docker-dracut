NAME =	armbuild/dracut

build:	Dockerfile
	docker build -t $(NAME) .

release:
	docker push $(NAME)

shell:  build
	docker run -it --rm $(NAME) /bin/bash

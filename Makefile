release:
	docker buildx build --platform linux/amd64,linux/arm64 --push -t afansv/buildah-aws:latest -t afansv/buildah-aws:$(IMAGE_TAG) .
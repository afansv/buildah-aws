# Use the quay.io/buildah/stable image as the base image
FROM quay.io/buildah/stable:v1.35.4

# Install awscli using dnf
RUN dnf -y update && \
    dnf -y install awscli && \
    dnf clean all && \
    rm -rf /var/cache/dnf

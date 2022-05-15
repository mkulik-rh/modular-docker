FROM fedora:latest

# mock - Needed for module_build
RUN dnf -y update && \
    dnf -y install dnf-plugins-core && \
    dnf -y builddep modulemd-tools && \
    dnf -y install git rpmdevtools gcc krb5-devel python3-tox mock

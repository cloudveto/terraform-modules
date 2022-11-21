FROM ubuntu:20.04
RUN apt-get update && \
    apt-get install -y software-properties-common gnupg gnupg1 gnupg2 highlight vim
RUN apt-get install -y locales jq git wget curl ansible unzip python-is-python3 python3-venv && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
    curl -sL https://istio.io/downloadIstioctl | sh - && \
    echo "PATH=$PATH:$HOME/.istioctl/bin" >> $HOME/.bashrc && \
    echo "PATH=$PATH:/root/.istioctl/bin" >> $HOME/.bashrc && \
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" && \
    unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && \
    rm -rf awscli-bundle*
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && \
    apt-get update && \
    apt-get install -y docker-ce-cli containerd.io
RUN apt-get install -y apt-transport-https ca-certificates && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y kubectl
RUN cd /root && \
    mkdir /root/bin && \
    mkdir .tfenv && \
    git clone https://github.com/tfutils/tfenv.git .tfenv && \
    echo 'export PATH="/root/.tfenv/bin:$PATH"' >> .bashrc && \
    ln -s .tfenv/bin/* /root/bin
RUN cd /usr/local/bin && \
    wget https://github.com/plumber-cd/terraform-backend-git/releases/download/v0.1.2/terraform-backend-git-linux-amd64 && \
    chmod 777 terraform-backend-git-linux-amd64 && \
    mv terraform-backend-git-linux-amd64 terraform-backend-git

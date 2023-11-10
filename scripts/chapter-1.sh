echo "***************************************************"
echo "********* CHAPTER 1 - STARTED AT $(date) **********"
echo "***************************************************"
echo "--- This could take around 20 minutes"
echo "--- Installing eksctl"

# for ARM systems, set ARCH to: `arm64`, `armv6` or `armv7`
ARCH=amd64
PLATFORM=$(uname -s)_$ARCH

curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

# (Optional) Verify checksum
curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check

tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz

sudo mv /tmp/eksctl /usr/local/bin

echo "--- eksctl done"

echo "--- Creating cluster eks"

# Create the Kubernetes Cluster
    eksctl create cluster -f Infra/eksctl/01-initial-cluster/cluster.yaml

echo "*************************************************************"
echo "********* READY TO CHAPTER 2! - FINISHED AT $(date) *********"
echo "*************************************************************"
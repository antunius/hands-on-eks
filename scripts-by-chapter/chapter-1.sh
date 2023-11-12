echo "***************************************************"
echo "********* CHAPTER 1 - STARTED AT $(date) **********"
echo "***************************************************"
echo "--- This could take around 20 minutes"
echo "--- Installing eksctl"

echo "--- Creating cluster eks"

# Create the Kubernetes Cluster
    eksctl create cluster -f ../Infrastructure/eksctl/01-initial-cluster/cluster.yaml

echo "*************************************************************"
echo "********* READY TO CHAPTER 2! - FINISHED AT $(date) *********"
echo "*************************************************************"
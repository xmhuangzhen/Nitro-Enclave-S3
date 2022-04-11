amazon-linux-extras install aws-nitro-enclaves-cli -y
yum install aws-nitro-enclaves-cli-devel -y
yum install amazon-ecr-credential-helper -y
yum install python3 -y


su ec2-user -c 'aws s3 cp s3://kmg-ps-public/enclave.eif $HOME/enclave.eif'

count=1
while true; do
    printf "[%4d] $HELLO\n" $count
    count=$((count+1))
    sleep 5
done
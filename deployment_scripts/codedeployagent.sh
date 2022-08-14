REGION=$(curl 169.254.169.254/latest/meta-data/placement/availability-zone/ | sed 's/[a-z]$//') &&

sudo yum update -y &&

sudo yum install -y python-pip &&

sudo yum install -y ruby &&

sudo yum install -y wget &&

cd /home/ec2-user

wget https://aws-codedeploy-$REGION.s3.amazonaws.com/latest/install &&

chmod +x ./install &&

sudo ./install auto &&

sudo yum remove -y wget &&

sudo service codedeploy-agent start
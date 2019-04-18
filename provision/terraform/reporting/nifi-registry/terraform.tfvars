nr-instance-type = "m5a.large"
nr-volume-size = "200"
nr-ssh-key = "openlmis-reporting"
nr-name = "nifi-registry"
env = "Demo"
bill-to = "OpenLMIS"
nr-http-port = "18080"
nr-https-port = "18443"
nr-subnet-id = "subnet-abddbfa4"
nr-ami = "ami-cd0f5cb6"
nr-vpc-name = "jenkins-nodes"
nr-instance-group = "docker-hosts"
nr-instance-ssh-user = "ubuntu"
docker-ansible-dir = "../../../ansible/"
nr-dns-name = "nifi-registry.openlmis.org"
docker-tls-port = "2376"
aws-region="us-east-1"
nr-assign-elastic-ip= true
nr-acm-certificate-arn= "arn:aws:acm:us-east-1:386835390540:certificate/b297cf7e-034c-4057-bd92-22526b24ca9d"
nr-elb-subnets  = ["subnet-abddbfa4", "subnet-083e611da5b9f6b43"]
nr-use-route53-domain = false

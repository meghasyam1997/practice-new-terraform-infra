env = "dev"
default_vpc_id = "vpc-02fd95dec0b93d08a"
default_vpc_cidr = "172.31.0.0/16"
default_vpc_rtid = "rtb-04788961f7eb75f09"

vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
    subnets    = {
      public = {
        name              = "public"
        cidr_block        = ["10.0.0.0/24","10.0.1.0/24"]
        availability_zone = ["us-east-1a","us-east-1b"]
      }
      web = {
        name              = "web"
        cidr_block        = ["10.0.2.0/24","10.0.3.0/24"]
        availability_zone = ["us-east-1a","us-east-1b"]
      }
      app = {
        name              = "app"
        cidr_block        = ["10.0.4.0/24","10.0.5.0/24"]
        availability_zone = ["us-east-1a","us-east-1b"]
      }
      db = {
        name              = "db"
        cidr_block        = ["10.0.6.0/24","10.0.7.0/24"]
        availability_zone = ["us-east-1a","us-east-1b"]
      }
    }
  }
}
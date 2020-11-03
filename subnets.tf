resource "aws_subnet" "pub_subnet" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "10.0.1.0/24"
}

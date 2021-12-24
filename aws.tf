resource "aws_instance" "my_server" {
  ami                = "ami-087c17d1fe0178315"
  instance_type = var.instance_type
  key_name = "${aws_key_pair.mayank.key_name}"
  tags = {
    Name = "MyServer-${local.project_name}"
  }
}

resource "aws_key_pair" "mayank" {
  key_name   = "server-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWkCcIJaXbfm7pc2o+lq9wbgqa8DeeGH9yyz1aSf/M/8f/u3dxRDW6j93FdIUUTMdXditxuOnDyXkz7EbcajHvPakr9c7Ve//4m2H+tq4IfKeFWHl1dLYJJDxnsogfybKuUKb9EsdD7JEl5RGnYbisSM2fU2RyhuQvy2ABfu/PjeeBOpc35hSVQqPNyDnGkvmKJKbyD3OGBBFvnA7yGqi+dlksQ2770sH0pleqYRyl6XuCIceE3pj4ISkhsJOT0HtRC8Jd102KhYU0dyJAR0SdULQnJbKqw53Yx1C4VwbeQMOQtaEFUyA1D3tr3dq8xmX+EfhIT3HLvrwCogw0eS75hWiHUAxh0/SvL+3bQMcrTvc8VH0flVJtrDNuF3ChjdgJo3MYWXRdR1Rz3PO+BlEexAWc111IIV69TLC2WtvA9gturPzxQgQ72Rs1Q2eNFd4fLZAOz8m0qLmk0kuCcVjm5I6tJMNek1LpX8yRn+EcM73xirvnDoh7eTQBJHxco88= mayank@mayank"
}



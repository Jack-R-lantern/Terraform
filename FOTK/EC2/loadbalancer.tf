resource "aws_lb" "fotk_alb" {
	name = "fotk-alb"
	internal = false
	load_balancer_type = "application"
	security_groups = [ data.terraform_remote_state.vpc.outputs.fotk_sg_alb ]
	subnets = [ data.terraform_remote_state.vpc.outputs.fotk_public_a_id,
				data.terraform_remote_state.vpc.outputs.fotk_public_c_id
			]
	tags = {
	  "Name" = "fotk_alb"
	}
}

resource "aws_lb_target_group" "fotk_target_group" {
	name = "fotk-alb-fw-tg"
	port = 80
	protocol = "HTTP"
	vpc_id = data.terraform_remote_state.vpc.outputs.fotk_vpc_id
}

resource "aws_lb_listener" "fotk_alb_http" {
	load_balancer_arn = aws_lb.fotk_alb.arn
	port = "80"
	protocol = "HTTP"

	default_action {
		type = "forward"
		target_group_arn = aws_lb_target_group.fotk_target_group.arn
	}
}
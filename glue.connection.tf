data "aws_subnet" "selected" {
 id var.subnet_id_1

resource "aws_glue_connection" "vpc_connection" {
name = "${var.app}-${var.env)-vpc-connection" description "VPC connection for Glue"
connection_type = "NETWORK"

connection_properties = {
CONNECTOR TYPE = "NETWORK"
}

physical_connection_requirements {

security_group_id_list = [aws_security_group.amp_security_group_onprem.id]




availability_zone data.aws_subnet.selected.availability_zone
subnet_id = var.subnet_id_1



}
tags = {
CostString AgileTean "1100.05.660.303030" "AMP" 

}


}

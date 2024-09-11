description "AWS Region"
5 variable "account_id" {
6 description "AWS account id"
7}
8
9 variable "access_log_bucket" {
10 description "53 log bucket for access" 11)
12
13 variable "env" (
14 description = "Application environment" 15) 16
17 variable "app" (
18 description "Application name"
19}
20
21 variable "assume_role_arn" {
22 type = string
23 description "Assume Role ARN"
24 >
12
25
26 variable "assume_role_external_id" {
tab
27 type string
28 description "Assume Role external ID"
true 29 sensitive
30)
31
32 variable "subnet_id_1" [
33 type string
34 description"Subnet ID 1" 35)
36
37 variable "subnet_id_2" ( 38 type string
39 description "Subnet ID 2" 40)
41
42 variable "subnet_id_3" {
43 type string
44 45) description "Subnet ID 3"
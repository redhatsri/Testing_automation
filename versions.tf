2
region var.region
3
<> त
4
assume_role {
5
role_arn = var.assume_role_arn
6
external_id var.assume_role_external_id
7
session_name = "terraform"
8
}
9
10
default_tags {
11
tags = {
12
Account
13
Creator
"terraform"
14
15
ResourceCostCenter "1100.US.660.403005.66002000"
16
ResourceOwner
= "eec-aws-automotive-velocity-sand"
ResourceBusinessUnit = "Automotive"
"autoinfrastructure@experian.com"
17
Environment
"sbx"
18
Product
19
Project
20
IAR
21
AppID
"AMP"
"PRJ0168817"
"IAR01854"
"22390"
22
23
24}
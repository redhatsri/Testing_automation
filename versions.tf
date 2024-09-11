1 provider "aws" (
2
region var.region
<>
assume_role role_arn
{ var.assume_role_arn
$
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
tags = { Account
12
13
Creator
= "terraform" "Automotive"
14
ResourceBusinessUnit
15
ResourceCostCenter
16
ResourceOwner
17
Environment
18
Product
19
Project
20
IAR
21
AppID
"eec-aws-automotive-velocity-sand"
"1100.US.660.403005.66082000"
"autoinfrastructure@experian.com"
"sbx"
"AMP"
"PRJ0168817"
"IAR01854"
"22390"
22
23 3
24)
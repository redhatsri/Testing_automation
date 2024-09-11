LEMON-LIME FLAVOURED
Source view
Diff to previous
History
13.78 KB Contributors
1 resource "aws_glue_job" "mediaara_step@@_process_input" (
2
name
3 role arn
"${var.app)-$(var.env)-mediaara-step@e-process-input" "arn:awstian::$(var.account_id): role/BURoleForAMPLambda Functions"
execution class
"STANDARD" "G.2X"
worker_type
number_of workers "16" glue version ="4.0"
execution property {
=" "staging"
s3://$(var.app)-$(var.env}-s3-etl-code-files/version=latest/${var.app)-$(var.app)-08-env.py" #ENVIRONMENT_FILE"
"s3://$(var.app)-$(var.env)-s3-etl-temp-files/temporary/"
8
<>
max concurrent_runs = 4
10)
11 12 default arguments = {
13
14 "ENVIRONMENT MODE" "-TempDir"
15
26 "-enable-continuous-cloudwatch-log" 17 "-enable-glue-datacatalog"
"true"
"true"
18 "-enable-job-insights" "--enable-metrics"
"false"
19
"true" "true"
28 "-enable-spark-ui"
21
"-job-timeout" 22 "-extra-files"
"30"
23
"-extra-py-files" 24 "-job-bookmark-option"
25
"-job-language" 26 "-spark-event-logs-path"
27)
26
command (
29
Edit
Blame
Raw file
"s3://s(var. app)-$(var.env)-lambda-code-devops/media/latest/.env"
"s3://$(var.app)-$(var.env)-lambda-code-devops/media/latest/experian_automotive_etl_dev-1.0-py3-none-any.whl,s3://s(var.app)-$(var.env)-lambda-ct
"job-bookmark-disable"
"python"
"s3://$(var.app)-$(var.env)-glue-assets/sparkHistoryLogs/"
script location "s3://5(var.app)-$(var.env)-lambda-code-devops/glue/oia_media_ara_step@@_preprocess_input_file.py" 30 #script_location="s3://$(var.app)-$(var.env)-s3-etl-code-files/scripts/glue/${var.app)-$(var.env)-mediaara-step@e-process-input.py"
33
32 depends on
33 aws_lam_role.burole_amp_lambda, aws s3 bucket.s3_etl_code_files
tags( 35
34 1
36
CostString
37 AgileTese
30)
39)
1108.US. 660.383838"
"AMP
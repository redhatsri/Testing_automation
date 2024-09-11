resource "aws_glue_job" "mediaara_step_process_input" {
  name        = "${var.app}-${var.env}-mediaara-step-process-input"
  role_arn    = "arn:aws:iam::${var.account_id}:role/BURoleForAMPLambdaFunctions"
  execution_class = "STANDARD"
  worker_type = "G.2X"
  number_of_workers = 16
  glue_version = "4.0"

  execution_property {
    max_concurrent_runs = 4
  }

  command {
    name            = "glueetl"
    script_location = "s3://${var.app}-${var.env}-lambda-code-devops/glue/oia_media_ara_step_preprocess_input_file.py"
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir"                          = "s3://${var.app}-${var.env}-s3-etl-temp-files/temporary/"
    "--ENVIRONMENT_FILE"                 = "s3://${var.app}-${var.env}-s3-etl-code-files/version=latest/${var.app}-${var.env}-08-env.py"
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-glue-datacatalog"          = "true"
    "--enable-job-insights"              = "false"
    "--enable-metrics"                   = "true"
    "--enable-spark-ui"                  = "true"
    "--job-timeout"                      = "30"
    "--extra-files"                      = "s3://${var.app}-${var.env}-lambda-code-devops/media/latest/.env"
    "--extra-py-files"                   = "s3://${var.app}-${var.env}-lambda-code-devops/media/latest/experian_automotive_etl_dev-1.0-py3-none-any.whl"
    "--job-bookmark-option"              = "job-bookmark-disable"
    "--job-language"                     = "python"
    "--spark-event-logs-path"            = "s3://${var.app}-${var.env}-glue-assets/sparkHistoryLogs/"
  }

  depends_on = [
    aws_iam_role.burole_amp_lambda,
    aws_s3_bucket.s3_etl_code_files
  ]

  tags = {
    CostString = "1108.US.660.383838"
    AgileTese  = "AMP"
  }
}

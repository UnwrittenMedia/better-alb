# better-alb

[![License](http://img.shields.io/badge/license-MIT-red.svg?style=flat)](./LICENSE)

A better application load balancer than Amazon's App Load Balancer, and still works with ECS.

Inspired by [ecs-gen](https://github.com/codesuki/ecs-gen) better-alb lets you generate config files
from templates using AWS ALB (ELBv2) target membership information.
We currently use this to generate nginx config files, mimicking the load balancer, but with least
connection based routing.

## Installing

You can use this on the same ECS cluster as your target service(s), but behind a classic ELB.

To run, just use the CloudFormation Quick Launch below:

### US-East-1

[![Launch Stack](./cloudformation-launch-stack.png)](
https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=betteralb-&templateURL=https://s3.amazonaws.com/samplecfntemplates/mytemplate.template)

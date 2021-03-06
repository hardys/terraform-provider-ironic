---
layout: "docs"
page_title: "Command: show"
sidebar_current: "docs-commands-show"
description: |-
  The `terraform show` command is used to provide human-readable output from a state or plan file. This can be used to inspect a plan to ensure that the planned operations are expected, or to inspect the current state as Terraform sees it.
---

# Command: show

The `terraform show` command is used to provide human-readable output
from a state or plan file. This can be used to inspect a plan to ensure
that the planned operations are expected, or to inspect the current state
as Terraform sees it.

Machine-readable output is generated by adding the `-json` command-line
flag.

-> **Note:** When using the `-json` command-line flag, any sensitive values in
Terraform state will be displayed in plain text. For more information, see
[Sensitive Data in State](/docs/state/sensitive-data.html).

## JSON Output

For Terraform state files (including when no path is provided),
`terraform show -json` will show a JSON representation of the state.

For Terraform plan files, `terraform show -json` will show a JSON representation
of the plan, configuration, and current state.

The output format is covered in detail in [JSON Output Format](/docs/internals/json-format.html).

## Usage

Usage: `terraform show [options] [path]`

You may use `show` with a path to either a Terraform state file or plan
file. If no path is specified, the current state will be shown.

The command-line flags are all optional. The list of available flags are:

* `-no-color` - Disables output with coloring

* `-json` - Displays machine-readable output from a state or plan file

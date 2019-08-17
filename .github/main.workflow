workflow "Schedule Workflow" {
  resolves = ["draft an rc"]
  on = "schedule(0 0 * * *)"
}

action "draft an rc" {
  uses = "drewwyatt/auto-rc@0.1.1"
  secrets = ["GITHUB_TOKEN"]
  env = {
    SOURCE_BRANCH = "develop"
    TARGET_BRANCH = "master"
  }
}

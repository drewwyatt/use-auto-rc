workflow "Schedule Workflow" {
  on = "schedule(*/5 * * * *)"
  resolves = ["draft an rc"]
}

action "draft an rc" {
  uses = "drewwyatt/auto-rc@0.1.1"
  secrets = ["GITHUB_TOKEN"]
  env = {
    SOURCE_BRANCH = "develop"
    TARGET_BRANCH = "master"
  }
}

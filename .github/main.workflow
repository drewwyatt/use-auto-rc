workflow "Schedule Workflow" {
  on = "schedule(*/5 * * * *)"
  resolves = ["drewwyatt/draft-an-rc@0.1.1"]
}

action "drewwyatt/draft-an-rc@0.1.1" {
  uses = "drewwyatt/draft-an-rc@0.1.1"
  secrets = ["GITHUB_TOKEN"]
  env = {
    SOURCE_BRANCH = "develop"
    TARGET_BRANCH = "master"
  }
}

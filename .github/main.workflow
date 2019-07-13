workflow "Schedule workflow" {
  resolves = ["Draft an RC"]
  on = "schedule(*/5 * * * *)"
}

action "Draft an RC" {
  uses = "drewwyatt/auto-rc@0.1.0"
  secrets = ["GITHUB_TOKEN"]
  env = {
    TARGET_BRANCH = "master"
  }
}

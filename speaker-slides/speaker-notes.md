slack fr thread: https://kongstrong.slack.com/archives/C0ASRBKGYPJ/p1778012891364059

open it in a tab, and use for prompt

run with /feature-request

second demo

product channel: https://kongstrong.slack.com/archives/C045Y8G7VDW

using /kong-revealjs-theme and the slack mcp create me a slide deck of the last 5 releases (from our releases channel: /kong-revealjs-theme) where most data is in the speaker notes so I can present to my customer in our next cadence call



while IFS= read -r user; do
    user="$(echo "$user" | xargs)"        # trim whitespace
    [ -z "$user" ] && continue
    echo -n "Adding $user ... "
    gh api -X PUT "orgs/Kong/teams/kong-skills-contributors/memberships/$user" -f role=member --jq .state
  done < ~/kong-dev/team-members.txt

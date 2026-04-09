+++
title = "Projects"
description = "Curated projects maintained and contributed to by CrazyMax, spanning Docker, BuildKit, GitHub Actions, container images, and Go tooling."
+++

This is a curated view of the work I maintain and contribute to most often. The full list is larger, but these are the
projects people usually land on first.

## Featured projects

- [Docker Buildx](https://github.com/docker/buildx), Docker's extended build CLI for BuildKit-based multi-platform image workflows.
- [Moby BuildKit](https://github.com/moby/buildkit), container image build engine focused on concurrency, caching, and extensibility.
- [Diun](https://github.com/crazy-max/diun), container update notifier that watches registries and sends alerts when images change.
- [Undock](https://github.com/crazy-max/undock), image extraction tool that unpacks container filesystem contents into a local directory.
- [swarm-cronjob](https://github.com/crazy-max/swarm-cronjob), scheduler that runs time-based jobs on Docker Swarm.
- [ddns-route53](https://github.com/crazy-max/ddns-route53), dynamic DNS updater that keeps Route 53 records in sync with changing IPs.
- [FTPGrab](https://github.com/crazy-max/ftpgrab), scheduled downloader for pulling files from FTP and SFTP servers.
- [geoip-updater](https://github.com/crazy-max/geoip-updater), updater service that refreshes MaxMind GeoIP2 databases on a schedule.
- [Portapps](https://github.com/portapps/portapps), framework for distributing portable Windows applications with clean packaging and updates.
- [WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker), privacy tool that blocks Windows telemetry and tracking endpoints.

## GitHub Actions

- [Docker Actions Toolkit](https://github.com/docker/actions-toolkit), shared library code that powers Docker's GitHub Actions.
- [Docker Login Action](https://github.com/docker/login-action), handles Docker registry authentication in workflows.
- [Docker Build and Push images Action](https://github.com/docker/build-push-action), runs Buildx builds and publishes container images.
- [Docker Buildx Bake Action](https://github.com/docker/bake-action), runs declarative Buildx Bake targets from workflows.
- [Docker Metadata Action](https://github.com/docker/metadata-action), computes image tags, labels, and annotations.
- [Docker Setup Buildx Action](https://github.com/docker/setup-buildx-action), installs and configures Docker Buildx builders.
- [Docker Setup QEMU Action](https://github.com/docker/setup-qemu-action), installs QEMU emulation support for multi-platform builds.
- [Docker Setup Docker Action](https://github.com/docker/setup-docker-action), installs and configures Docker Engine on runners.
- [Docker Setup Compose Action](https://github.com/docker/setup-compose-action), installs the Docker Compose CLI for workflows.
- [GoReleaser Action](https://github.com/goreleaser/goreleaser-action), runs GoReleaser to build and publish releases.
- [Mage Action](https://github.com/magefile/mage-action), runs Mage targets in GitHub Actions workflows.
- [Chocolatey Action](https://github.com/crazy-max/ghaction-chocolatey), installs and runs Chocolatey packages on Windows runners.
- [Container Scan Action](https://github.com/crazy-max/ghaction-container-scan), scans container images for known vulnerabilities.
- [Docker Status Action](https://github.com/crazy-max/ghaction-docker-status), checks Docker service health before or during CI runs.
- [Dump context Action](https://github.com/crazy-max/ghaction-dump-context), prints workflow and runner context for debugging.
- [GitHub Labeler Action](https://github.com/crazy-max/ghaction-github-labeler), syncs repository labels from code.
- [GitHub Pages Action](https://github.com/crazy-max/ghaction-github-pages), publishes built content to GitHub Pages.
- [GitHub Runtime Action](https://github.com/crazy-max/ghaction-github-runtime), exposes runner runtime details to workflows.
- [GitHub Status Action](https://github.com/crazy-max/ghaction-github-status), checks GitHub platform status from workflows.
- [Import GPG Action](https://github.com/crazy-max/ghaction-import-gpg), imports GPG keys for signing in CI.
- [UPX Action](https://github.com/crazy-max/ghaction-upx), compresses build artifacts with UPX.
- [VirusTotal Action](https://github.com/crazy-max/ghaction-virustotal), uploads files for VirusTotal analysis.
- [Golang CGO Cross Compiler Action](https://github.com/crazy-max/ghaction-xgo), runs xgo for CGO-enabled cross-compilation.

## Container images

- [AnonAddy](https://github.com/anonaddy/docker), anonymous email forwarding for self-hosted aliases, packaged as a ready-to-run container image.
- [LibreNMS](https://github.com/librenms/docker), network monitoring software, packaged for containerized deployment with its web and poller stack.
- [7-Zip](https://github.com/crazy-max/docker-7zip), 7-Zip command-line tools, packaged in a minimal container for archive operations.
- [Alpine S6](https://github.com/crazy-max/docker-alpine-s6), Alpine Linux, packaged with s6-overlay as a reusable base image for supervised services.
- [Fail2ban](https://github.com/crazy-max/docker-fail2ban), intrusion prevention software, packaged as a containerized service for banning abusive hosts.
- [Flarum](https://github.com/crazy-max/docker-flarum), forum software, packaged as an Alpine-based image with the web stack needed to run it.
- [Linguist](https://github.com/crazy-max/docker-linguist), GitHub's language detection library, packaged as a container for repository analysis tasks.
- [Matomo](https://github.com/crazy-max/docker-matomo), web analytics software, packaged as a container image for self-hosted deployments.
- [msmtpd](https://github.com/crazy-max/docker-msmtpd), the msmtpd SMTP relay, packaged as a lightweight container for outbound mail delivery.
- [Nextcloud](https://github.com/crazy-max/docker-nextcloud), self-hosted file sync and collaboration software, packaged as a container image for Alpine-based deployments.
- [osxcross](https://github.com/crazy-max/docker-osxcross), macOS cross-compilation toolchain, packaged as a reusable builder image.
- [Pure-FTPd](https://github.com/crazy-max/docker-pure-ftpd), FTP server software, packaged with MySQL, PostgreSQL, and LDAP authentication support.
- [qBittorrent](https://github.com/crazy-max/docker-qbittorrent), BitTorrent client software, packaged as a container image for headless and web UI usage.
- [RRDcached](https://github.com/crazy-max/docker-rrdcached), the RRDtool caching daemon, packaged as a lightweight container service.
- [rTorrent and ruTorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent), rTorrent with the ruTorrent web UI, bundled into a single containerized deployment.
- [Samba](https://github.com/crazy-max/docker-samba), SMB file sharing software, packaged as a container for simple network shares.
- [Unbound](https://github.com/crazy-max/docker-unbound), validating recursive DNS resolver software, packaged as a containerized DNS service.

## More projects

- [echo-ipfilter](https://github.com/crazy-max/echo-ipfilter), IP filtering middleware for the Echo framework.
- [gonfig](https://github.com/crazy-max/gonfig), lightweight config handling for Go.
- [gotestlist](https://github.com/crazy-max/gotestlist), list tests in Go packages.
- [gohealthchecks](https://github.com/crazy-max/gohealthchecks), Healthchecks API client for Go.
- [goxx](https://github.com/crazy-max/goxx), Go CGO cross-compiler container image.
- [xgo](https://github.com/crazy-max/xgo), CGO cross compiler.

## Archived projects

- [Artifactory Cleanup](https://github.com/crazy-max/artifactory-cleanup), JFrog Artifactory cleanup tool for removing old artifacts with rule-based retention.
- [CSGO Server Launcher](https://github.com/crazy-max/csgo-server-launcher), server launcher for running Counter-Strike: Global Offensive dedicated instances.
- [DokuWiki SyntaxHighlighter4 plugin](https://github.com/crazy-max/dokuwiki-plugin-syntaxhighlighter4), DokuWiki plugin that adds SyntaxHighlighter 4 code block support.
- [Cloudflared](https://github.com/crazy-max/docker-cloudflared), container image for running Cloudflared as a DNS-over-HTTPS proxy.
- [DinD](https://github.com/crazy-max/docker-docker), Docker-in-Docker image for nested Docker and BuildKit workflows.
- [DokuWiki](https://github.com/crazy-max/docker-dokuwiki), container image for running DokuWiki on Alpine Linux.
- [EJT License Server](https://github.com/crazy-max/docker-ejtserver), container image for the ej-technologies license server.
- [Firefox Sync Server](https://github.com/crazy-max/docker-firefox-syncserver), container image for Mozilla Firefox Sync Server.
- [Healthchecks](https://github.com/crazy-max/docker-healthchecks), container image for self-hosting Healthchecks on Alpine Linux.
- [JetBrains License Server](https://github.com/crazy-max/docker-jetbrains-license-server), container image for the JetBrains License Server.
- [Loop](https://github.com/crazy-max/docker-loop), tiny container that loops forever for testing and dummy service use.
- [Neard](https://github.com/neard/neard), portable WAMP software stack.
- [Shodan](https://github.com/crazy-max/docker-shodan), container image for running the Shodan CLI.
- [Spliit](https://github.com/crazy-max/docker-spliit), container image for self-hosting Spliit.
- [Firefox History Merger](https://github.com/crazy-max/firefox-history-merger), Firefox history repair tool for merging places databases and restoring favicons.
- [Hugo Action](https://github.com/crazy-max/ghaction-hugo), GitHub Action for installing and running Hugo in workflows.
- [Setup containerd Action](https://github.com/crazy-max/ghaction-setup-containerd), GitHub Action for installing and configuring containerd in workflows.
- [Git Rewrite Author](https://github.com/crazy-max/git-rewrite-author), Git history rewrite tool for changing author and committer metadata.
- [GoReleaser XX](https://github.com/crazy-max/goreleaser-xx), cross-compilation helper for GoReleaser and multi-platform builds.
- [login-servers enhanced](https://github.com/crazy-max/login-servers-enhanced), enhanced Adminer login-servers plugin with additional configuration features.
- [Rocket.Chat AppVeyor](https://github.com/crazy-max/rocketchat-appveyor), Rocket.Chat integration for AppVeyor build notifications.
- [Rocket.Chat MicroBadger](https://github.com/crazy-max/rocketchat-microbadger), Rocket.Chat integration for MicroBadger image notifications.
- [Rocket.Chat UptimeRobot](https://github.com/crazy-max/rocketchat-uptimerobot), Rocket.Chat integration for UptimeRobot alerts.
- [Rocket.Chat Xray](https://github.com/crazy-max/rocketchat-xray), Rocket.Chat integration for JFrog Xray vulnerability notifications.
- [Travis wait enhanced](https://github.com/crazy-max/travis-wait-enhanced), helper for keeping long-running Travis CI jobs alive.
- [Xcalibur XLS to CSV](https://github.com/crazy-max/xcalxls2csv), converter for turning Xcalibur XLS data frames into CSV files.
- [yasu](https://github.com/crazy-max/yasu), lightweight utility for switching user and group identity in containers.

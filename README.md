# Zeabur Homebrew tap

The Homebrew formula and cask for [Zeabur](https://github.com/zeabur-oss/zeabur), the open source
Kubernetes dashboard.

```sh
brew tap zeabur-oss/tap
brew install zeaburctl                  # the command line tool
brew install --cask zeabur-desktop      # Zeabur Desktop, macOS only
```

`brew upgrade` moves both to the newest release. Each file checks the downloaded release against
its `SHA256SUMS`.

Every release of zeabur-oss/zeabur updates `Formula/` and `Casks/` here, so do not edit them by
hand. Report problems and send changes to [zeabur-oss/zeabur](https://github.com/zeabur-oss/zeabur).

## Licence

[Apache License 2.0](LICENSE). Contributions need a `Signed-off-by` line under the
[Developer Certificate of Origin](DCO).

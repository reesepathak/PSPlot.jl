using BinDeps
@BinDeps.setup

inkscape = library_dependency("inkscape")

if is_apple()
    using Homebrew
    provides(Homebrew.HB, "caskroom/cask/inkscape", inkscape, os= :Darwin)
end


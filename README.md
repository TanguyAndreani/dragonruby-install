# dragonruby-install

A tool to unpack DragonRuby in the current directory, where your `mygame` folder is.

I assume that you [downloaded DragonRuby from itch.io](https://dragonruby.itch.io) and that you have access to a file
named `dragonruby-gtk-linux-amd64.zip` which is, in my examples, located in `~/Downloads`.

## Installation process

```bash
git clone https://github.com/TanguyAndreani/dragonruby-install
cd dragonruby-install
sudo make install # just copies the script in a system directory
```

## First example

First, we'll try to run a [simple parallax](https://github.com/tanguyandreani/dragonruby-parallax) that I made.

If you look at the directory structure, it's just a `mygame` directory.

```bash
mkdir dr_games
cd dr_games
git clone https://github.com/tanguyandreani/dragonruby-parallax
dragonruby-install ~/Downloads/dragonruby-gtk-linux-amd64.zip .
./dragonruby dragonruby-parallax
```

Then you can clone as many games as you want in this folder.

Typically, you type `./dragonruby [directory which contains the app/ folder]` to run a game.

## Second example

This time, we'll look at the game [Education sentimentale](https://github.com/sojastar/education_sentimentale).

```bash
mkdir dr_games
cd dr_games
git clone https://github.com/sojastar/education_sentimentale
dragonruby-install ~/Downloads/dragonruby-gtk-linux-amd64.zip .                                        
./dragonruby education_sentimentale
```

### Typical workflows

1. Always unpack dragonruby in a single directory and clone games in it.
2. Or copy or link this script in your project and have a directory structure that looks like this:

```
mygame/
dragonruby-install.bash
```

### Ignore DragonRuby files

Here is a sample gitignore from another project:

```gitignore
*
!mygame
!README.md
```

In plain English: Ignore everything that isn't in the mygame directory.

You can then add a normal gitignore in your `mygame` dir.

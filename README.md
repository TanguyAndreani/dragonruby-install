# dragonruby-install

A tool to unpack DragonRuby in the current directory, where your `mygame` folder is.

I assume that you [downloaded DragonRuby from itch.io](https://dragonruby.itch.io) and that you have access to a file
named `dragonruby-gtk-linux-amd64.zip` which is, in my examples, located in `~/Downloads`.

## Installation process

```bash
cd /tmp
git clone https://github.com/TanguyAndreani/dragonruby-install
cd dragonruby-install
sudo make install # just copies the script in a system directory
```

## First example

First, we'll try to run a [simple parallax](https://github.com/tanguyandreani/dragonruby-parallax) that I made.

If you look at the directory structure, it's just a `mygame` directory.

```bash
cd /tmp
git clone https://github.com/tanguyandreani/dragonruby-parallax
cd dragonruby-parallax
dragonruby-install ~/Downloads/dragonruby-gtk-linux-amd64.zip .
./dragonruby mygame
```

## Second example

This time, we'll look at the game [Education sentimentale](https://github.com/sojastar/education_sentimentale).

This project is a bit different than the parallax you just ran, it's more complex, of course, it's a real game.
But what is really different here is that the repo does not contain a `mygame` directory, *it is* one.

So you have to copy Dragonruby outside of it, like this for example:

```bash
cd /tmp
mkdir education_sentimentale
cd education_sentimentale
git clone https://github.com/sojastar/education_sentimentale mygame
dragonruby-install ~/Downloads/dragonruby-gtk-linux-amd64.zip .                                        
./dragonruby mygame
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

# dragonruby-tutorial

[DragonRuby](https://dragonruby.itch.io)

Remember that you can download the engine for free under certain conditions which you
probably match if you happen to be a student.

## How to run games from sources?

First you have to download DragonRuby. Then you should have access to an archive named
like `dragonruby-gtk-linux-amd64.zip`.

When you unzip this archive, you get this folder (or at least something similar):

```
ls -la dragonruby-linux-amd64/
total 8052
drwxr-xr-x  6 user user    4096 Jul 31 00:16 .
drwxr-xr-x  5 user user    4096 Aug 18 11:49 ..
-rw-r--r--  1 user user   44077 Jul 31 00:16 CHANGELOG.txt
-rw-r--r--  1 user user   25034 Jul 31 00:16 console-logo.png
-rw-r--r--  1 user user   66178 Jul 31 00:16 ctags-emacs
-rw-r--r--  1 user user  122636 Jul 31 00:16 ctags-vim
drwxr-xr-x  3 user user    4096 Jul 31 00:16 docs
drwxr-xr-x  3 user user    4096 Jul 31 00:16 .dragonruby
-rwxr-xr-x  1 user user 3171752 Jul 31 00:16 dragonruby
-rw-r--r--  1 user user   32688 Jul 31 00:16 dragonruby-controller.png
-rwxr-xr-x  1 user user   79312 Jul 31 00:16 dragonruby-httpd
-rw-r--r--  1 user user   14417 Jul 31 00:16 dragonruby.png
-rwxr-xr-x  1 user user 1480416 Jul 31 00:16 dragonruby-publish
-rw-r--r--  1 user user 3146844 Jul 31 00:16 font.ttf
drwxr-xr-x  5 user user    4096 Jul 31 00:16 mygame
-rw-r--r--  1 user user    9788 Jul 31 00:16 open-source-licenses.txt
drwxr-xr-x 67 user user    4096 Jul 31 00:16 samples
-rw-r--r--  1 user user      81 Jul 31 00:16 VERSION.txt
```

In this folder, the two binaries I need are `dragonruby` and `dragonruby-publish`.

The first one is used to run games and the other to publish games on itch.io or just to package them.

But we won't copy those files outside of this directory. You can't do that because they depend on many
other files in this directory, `.dragonruby/stubs` for example, which contains all the necessary files
to package your games for linux, macosx, raspberrypi, windows and web browsers.

As I understand it your supposed to develop like this:

1. Duplicate the dragonruby whole folder
2. Start developing your game in `mygame`
3. Run the game by running commands like `./dragonruby mygame`
4. Edit metadatas in `mygame/metadata`
5. Publish the game with `./dragonruby-publish`

You could also skip the first step and have multiple directories like `mygame`, `myothergame`, `yourgame`...
But I wouldn't recommend it. A potential caveat is when two games require a different version of DR.

So I recommend to copy everytime, and then when there is an update to the engine you update it for
every project and check that it still works, fix things otherwise.

## Advertising which version of dragonruby is used by your project.

You could do that in the readme with a badge, like that:

```
![my badge](https://img.shields.io/badge/dragonruby-1.12%20(a14978f)-blueviolet)
```

Which would look like to:

![my badge](https://img.shields.io/badge/dragonruby-1.12%20\(a14978f\)-blueviolet)

## Unpack DragonRuby in the current directory

Let's say you have repo like this:

```
./
  - mygame/
```

You can run `./unpack_dragonruby.bash ~/Downloads/dragonruby.zip .` and it will copy the content of the zip
to the current directory, without overwriting `mygame/`. Then you can run `./dragonruby mygame/`.

## Ignore DragonRuby files

Here is a sample gitignore from another project:

```gitignore
*
!mygame
!README.md
```

In plain English: Ignore everything that isn't in the mygame directory.

You can then add a normal gitignore in your `mygame` dir.

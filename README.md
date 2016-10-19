# docker-mkdocs

`docker pull thinkcube/mkdocs`

### New project

- Go to directory where you have writing permissions such as `your home` or `/tmp`

`cd ~`

`docker run -v ~:/home/user -u user thinkcube/mkdocs mkdocs new my_test_project`

`cd my_test_project`

- do your thing and populate the documents

`docker run -d -v ~/my_test_project:/home/user -u user -p 8092:80 thinkcube/mkdocs`

- access: `127.0.0.1:8092`

### Exsisting project

`docker run -d -v ~/my_test_project:/home/user -u user -p 8092:80 thinkcube/mkdocs`

access: `127.0.0.1:8092`


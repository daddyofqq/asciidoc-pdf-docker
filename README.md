# asciidoc-pdf-docker

This project can create a docker to generate pdf file from asciidoc, with plantuml diagram support.

You can build docker by:

```
docker build -t adoc .
```

and then in any folder with asciidoc file, you can following docker command to automatically convert all asciidoc

```
docker run --rm --user `id -u` -v `pwd`:/docs -i -t adoc
```

OR run the provided script run-docker.sh

# plantuml

You can refer to manual of asciidoc for how to write a proper asciidoc, to embed plantuml diagram inside, following is an example:

```
[plantuml, client-server, png]
....
participant "Client" as C
participant "Server" as S

activate C

C -> S : Request

activate S

S -> C : Response

deactivate S

C -> C : Display result

deactivate C

....

```

There are plenty of online resource for plantuml guide.

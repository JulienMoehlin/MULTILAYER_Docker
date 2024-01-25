# MULTILAYER Docker version

<p align="center">
    <a href="https://hub.docker.com/r/hyperionju/spatial_multilayer"><img src="https://badgen.net/badge/docker/hyperionju%2Fspatial_multilayer?label&icon=docker" /></a>
    <a href=""><img src="https://badgen.net/docker/pulls/hyperionju/spatial_multilayer?icon=docker&label=pulls" /></a>
    <a href=""><img src="https://badgen.net/github/stars/JulienMoehlin/MULTILAYER_Docker?icon=github&label=stars" /></a>
    <a href=""><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.6365536.svg" /></a>
</p>


[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6365536.svg)](https://www.cell.com/cell-systems/fulltext/S2405-4712(21)00151-4?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS2405471221001514%3Fshowall%3Dtrue) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6365580.svg)](https://star-protocols.cell.com/protocols/998)

<p align="center">
     <a href=""><img src="https://github.com/JulienMoehlin/MULTILAYER_Docker/blob/main/docker.gif" /></a>
</p>

This is a docker version of MULTILAYER (tool for spatial transcriptomics analysis).

Do you want more informations about MULTILAYER ? Please visit [MULTILAYER's GitHub](https://github.com/SysFate/MULTILAYER).

Versions of libraries :

- numpy = 1.19.3
- matplotlib = 3.3.2
- pandas = 1.1.4
- scipy = 1.5.4
- scikit-learn = 0.23.2
- seaborn = 0.11.0
- networkx = 2.5
- python-louvain = 0.14
- pillow = 8.0.1

## How to launch Multilayer with Docker ? (Step by step tutorial)

Docker should be previously installed.

Start Docker service

```bash
systemctl start docker
```

Check if Docker is active (it should be active)

```bash
systemctl is-active docker
```

Pull the docker image from [DockerHub](https://hub.docker.com/r/hyperionju/spatial_multilayer)

```bash
docker pull hyperionju/spatial_multilayer
```

You should have now an image called 'hyperionju/spatial_multilayer', you can check with :

```bash
docker images
```

Then you can run and enjoy.

```bash
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY hyperionju/spatial_multilayer
```

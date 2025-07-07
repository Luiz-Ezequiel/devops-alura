# Imersão DevOps - Alura Google Cloud

## Tecnologias apresentadas

- Docker
- Docker-Compose
- CI/CD com Github Actions
- Básicos do Goggle Cloud Platform (GCP)

## Conceitos apresentados

- Nesta imersão, foram apresentados os conceitos de **conteinerização**, a fim de evitar erros de projeto que só rodam na máquina do desenvolvedor, o famoso "Funciona na minha máquina", além de facilitar o processo de distribuição e colaboração em projetos, limitando o escopo das dependências e evitando conflitos. Foi mencionado também o processo de *multi-stage build* em docker, que é uma forma de otimizar a imagem, dividindo o processo de criação da imagem em etapas, diminuindo o tamanho dela no final.
- O uso do **docker-compose** para facilitar a criação do ambiente de desenvolvimento, especialmente em aplicações mais complexas, como *arquitetura de microserviços*, com banco de dados, cache, etc. Onde gerênciar vários dockerfiles manualmente seria trabalhoso, o docker-compose serve para definir e orquestrar esses serviços de forma mais simples, além de integrar muito bêm com várias plataformas de **CI/CD**, sendo alguma delas *gitlab ci/cd*, *jenkins*, *circleCI* e a usada na imersão *github actions*.
- O uso do **github actions** foi feito em um simples workflow, onde a imagem docker é criada automaticamente após cada commit, mas pode ser algo muito mais complexo, envolvendo varios processos, desde a validação da organização do código, se segue o padrão do projeto, a *testes unitários*, *deploy automático* para produção e etc, sendo tudo monitorado e caso algum processo falhe você consegue ver qual commit causou o erro e em que etapa.
- A ultima aula foi a criação de um projeto na **Google Cloud** e o uso do *gcloud-cli* para fazer o deploy da imagem no *artifact registry* que é um repositório tipo o *container registry* do DockerHub, mas em vez de só guardar containers, ele armazena qualquer 'artefato' podendo consistir de *pacotes do S.O*, *pacotes de linguagens de programação*, *pipelines de kubernetes* ou mais. A imagem então foi publicada para acesso publico por meio do *cloud run*, um *loadbalancer* e acessável em uma url, com *monitoração* e *armazaenamento de logs*, de forma fácil por um comando. Claro isso sendo apenas o básico da GCP não arranhando a superfície de tudo que ela tem a oferecer, mas dando uma boa ideia de que cloud não precisa ser tão complicada assim e que tomando os devidos cuidados, especialmente quando involve créditos, é possivel aprender cloud e aplicar em projetos mesmo sem muito conhecimento prévio hoje.

## URL do projeto

https://api-659236338846.southamerica-east1.run.app/docs

O projeto está disponível na URL acima e continuará no ar até o fim dos créditos disponibilizados pela imersão. O projeto é uma API de gestão escolar e o código foi disponibilizado na imersão já que o foco da mesma era na parte de infraenstrutura e devops.
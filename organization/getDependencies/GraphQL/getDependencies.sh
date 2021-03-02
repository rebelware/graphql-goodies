curl --request POST \
  --url https://api.github.com/graphql \
  --header 'accept: application/vnd.github.hawkgirl-preview+json' \
  --header 'authorization: token <YOUR-GITHUB-PAT>' \
  --header 'content-type: application/json' \
  --data '{"query":"query ($orgname: String!) {\n  organization(login: $orgname) {\n    name\n    repositories(first: 100) {\n      edges {\n        node {\n          name\n          dependencyGraphManifests {\n            nodes {\n              dependencies {\n                nodes {\n                  packageName\n                  requirements\n                }\n              }\n            }\n          }\n        }\n      }\n    }\n  }\n}\n","variables":{"orgname":"rebelware"}}'
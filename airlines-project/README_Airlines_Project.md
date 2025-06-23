
# Airlines Data Engineering Project Documentation

---

## SS_17_Repo.png

This screenshot shows the folder structure of the code repository used in Azure DevOps (ADO). It includes:

- `dataengineering/airlines`
  - Contains source code, notebooks, Terraform scripts
- `infra/`
  - ARM templates for resource deployments
- YAML files:
  - `publish_adf.yml` – used to automate publishing of ADF pipelines to the factory
  - `release_airlines.yml` – used to release the package to target environments

---

## SS_18_ARM_adf_publish.png

This image shows the `publish_adf.yml` pipeline. Key elements:

- Trigger on push to branch: `main`
- Task: Publish ADF (Azure Data Factory) using ARM template via `AzureResourceManagerTemplateDeployment` task
- Uses service connection to deploy to Azure
- Parameters include:
  - `resourceGroupName`
  - `factoryName`
  - `templateFile`
  - `templateParametersFile`
  - `deploymentMode`: `Incremental`

---

## SS_19.png

Screenshot of the published ARM template structure:

- The generated ARM template and parameter JSONs (`ARMTemplateForFactory.json`, `ARMTemplateParametersForFactory.json`)
- These are artifacts created after `adf_publish` command and are used in release pipeline to deploy ADF objects to target environments.

---

## SS_20_release_pipeline.png

This is the `release_airlines.yml` pipeline, part of the release process. Highlights:

- Triggered manually or from pipeline run
- Uses `AzureCLI@2` task to deploy ADF template
- Parameters passed:
  - `--resource-group`
  - `--factory-name`
  - `--template-file`
  - `--parameters`
- Environment: `dev`, `qa`, or `prod`

---

## SS_21.png

This screenshot shows the YAML stage structure of the release pipeline:

- `stages:` → defines release process in stages
- `jobs:` → defines deployment job
- `steps:` → shows the deployment step using `AzureCLI@2`
- Uses pre-defined variables for environment-specific values

---

## SS_22.png

Parameters YAML configuration includes:

- `parameters:` section in YAML
- Variables like:
  - `environmentName`
  - `resourceGroupName`
  - `dataFactoryName`
- These parameters are passed during pipeline execution

---

## SS_23.png

This is a release summary dashboard screenshot showing:

- Successful release pipeline execution
- Logs showing ADF deployment to the specified environment
- Shows which stages passed and tasks executed

---

## SS_24.png

This screenshot shows the artifacts section:

- Artifacts are the outputs of the `publish_adf` pipeline
- Consumed as inputs by the `release_airlines` pipeline
- Includes `.json` templates required for deployment

---

## SS_25.png

This screenshot shows the pipeline variables defined at runtime:

- `resourceGroupName`, `factoryName`, `environmentName`
- These are injected into the deployment steps

---

## SS_26.png

Screenshot of Azure DevOps release view:

- Includes stages view
- Environment selection like `DEV`, `QA`, `PROD`
- Audit trail of which user deployed to which environment

---


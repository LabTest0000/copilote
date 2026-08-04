set define on
set verify off
set feedback on

prompt
prompt APEXLang deploy for application 100
prompt Run this script from SQLcl while connected to the target database.
prompt Input path is fixed to the repository root.
prompt

define p_input = "C:/Users/dani.gagnon/Documents/copilote-apex-llama3_1_8b"
define p_deployment = "C:/Users/dani.gagnon/Documents/copilote-apex-llama3_1_8b/deployments/default.json"
define p_workspace = "TEST"

prompt Input path: &p_input
prompt Deployment file: &p_deployment
prompt Target APEX workspace: &p_workspace

prompt
prompt Validating APEXLang source...
apex validate -input "&p_input" -deployment "&p_deployment" -workspace "&p_workspace"

prompt
prompt Importing application...
apex import -input "&p_input" -deployment "&p_deployment" -workspace "&p_workspace"

undefine p_input
undefine p_deployment
undefine p_workspace

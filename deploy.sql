set define on
set verify off
set feedback on

prompt
prompt APEXLang deploy for application 100
prompt Run this script from SQLcl while connected to the target database.
prompt Input path is fixed to the repository root.
prompt

define p_input = "C:/Users/dani.gagnon/Documents/copilote-apex-llama3_1_8b"
define p_workspace = "TEST"

prompt Input path: &p_input
prompt Target APEX workspace: &p_workspace

prompt
prompt Validating APEXLang source...
apex validate -input "&p_input" -deployment default -workspace "&p_workspace"

prompt
prompt Importing application...
apex import -input "&p_input" -deployment default -workspace "&p_workspace"

undefine p_input
undefine p_workspace

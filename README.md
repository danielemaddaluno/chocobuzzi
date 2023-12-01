# Chocobuzzi

## Prerequisites:
Some software cannot be installed through chocolatey so they have to be downloaded manually.
<br>
Download the following softwares and put them under the folder `nochoco`:
 - <a href="https://www.netacad.com/portal/resources/packet-tracer" target="_blank">CiscoPacketTracer_XXX_Windows_64bit.exe</a>
 - <a href="http://www.flowgorithm.org/download/" target="_blank">Flowgorithm Installer.msi</a>
 - <a href="https://dev.mysql.com/downloads/workbench/" target="_blank">mysql-workbench-community-X.X.XX-winx64.msi</a>
 - <a href="https://staruml.io/download/" target="_blank">StarUML-v2.8.1.msi</a>
 - <a href="https://www.virtualbox.org/wiki/Downloads" target="_blank">VirtualBox-X.X.XX-XXXXXX-Win.exe</a>
 - <a href="https://github.com/veyon/veyon/releases" target="_blank">veyon-X.X.X-win64-setup-exe</a>
 - <a href="https://github.com/veyon/addons/releases" target="_blank">veyon-addons-X.X.X.X-win64-setup.exe</a>
 - add the veyon configurations file `pc_client_config.json` and `pc_server_config.json`
   (export from the veyon configurator)
 - add the veyon public/private keys `veyon_teacher_public_key.pem` and `veyon_teacher_private_key.pem`
   (export from the veyon configurator from the `keys` section)
 - `emu8086vXXX_setup.exe` (and add the `emu8086_reg.ini` license)


The installers <ins>**must**</ins> follow the naming patterns shown in the list otherwise 
they'll not be detected by the specific `.bat` auto installer.

## Instructions
1. Right click on the specific `.bat` file and run as administrator.
2. Chose `y` for a student PC, choose `n` for a teacher PC.
3. Give a confirmation with a `y`.
4. Wait the installation process to complete.
5. That's all.

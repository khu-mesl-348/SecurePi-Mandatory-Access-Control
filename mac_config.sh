#!bin/bash

semodule -i /root/securepi/SecurePi-Mandatory-Access-Control/securepi.pp

semanage fcontext -a -t spboot_t "/root/securepi/SecurePi_Secure-Boot(/.*)?"
semanage fcontext -a -t spupdate_t "/root/securepi/SecurePi_Secure-FW-update(/.*)?"
semanage fcontext -a -t spattest_t "/root/securepi/SecurePi-Remote-attestation(/.*)?"
semanage fcontext -a -t spcomm_t "/root/securepi/SecurePi_Secure-communication(/.*)?"
semanage fcontext -a -t spinte_t "/root/securepi/SecurePi_File-system-Integrity(/.*)?"
semanage fcontext -a -t spenc_t "/root/securepi/SecurePi_File-system-encryption(/.*)?"
semanage fcontext -a -t spmac_t "/root/securepi/SecurePi-Mandatory-Access-Control(/.*)?"

restorecon -R /root/securepi/SecurePi_Secure-Boot
restorecon -R /root/securepi/SecurePi_Secure-FW-update
restorecon -R /root/securepi/SecurePi-Remote-attestation
restorecon -R /root/securepi/SecurePi_Secure-communication
restorecon -R /root/securepi/SecurePi_File-system-Integrity
restorecon -R /root/securepi/SecurePi_File-system-encryption
restorecon -R /root/securepi/SecurePi-Mandatory-Access-Control
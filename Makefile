
all: ATLAS.user_data vm20.user_data

VMCONDOR_FILES=make_multipart_user_data      \
                  VMCondor_comments          \
                  VMCondor_condor            \
                  VMCondor_cloud-config      \
                  VMCondor_ucernvm           \
                  VMCondor_shellscript

ATLAS.user_data: ATLAS.write_files ATLAS.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data ATLAS

vm20.user_data: vm20.write_files vm20.condor $(VMCONDOR_FILES)
	./make_VMCondor_user_data vm20


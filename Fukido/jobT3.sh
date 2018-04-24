#!/bin/sh
# �J�����g�f�B���N�g���ŃW���u�����s����ꍇ�Ɏw��
#$ -cwd
# �����^�C�vF 1�m�[�h���g�p
#$ -l f_node=2
# ���s���Ԃ��w��
#$ -l h_rt=10:00:00
#$ -N coawst_fm
# Module�R�}���h�̏�����
. /etc/profile.d/modules.sh
# Intel Compiler���̓Ǎ�
module load intel
module load hdf5
# Intel MPI���̓Ǎ�
module load intel-mpi
export GS1=/gs/hs1/tga-NakamuLab
export LD_LIBRARY_PATH=$GS1/opt/intel/netcdf-c-4.4.1.1/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$GS1/opt/intel/netcdf-fortran-4.4.4/lib:$LD_LIBRARY_PATH
echo $PATH
echo $LD_LIBRARY_PATH
# �m�[�h������28�v���Z�XMPI�S56�v���Z�X���g�p
mpiexec.hydra -ppn 28 -n 56 ./oceanM ocean_fukido_T3.in

¿
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-0-ga4dfb8d1a718¤
£
"word2_vec/w2v_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"word2_vec/w2v_embedding/embeddings

6word2_vec/w2v_embedding/embeddings/Read/ReadVariableOpReadVariableOp"word2_vec/w2v_embedding/embeddings*!
_output_shapes
:*
dtype0

word2_vec/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name word2_vec/embedding/embeddings

2word2_vec/embedding/embeddings/Read/ReadVariableOpReadVariableOpword2_vec/embedding/embeddings*!
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
±
)Adam/word2_vec/w2v_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/word2_vec/w2v_embedding/embeddings/m
ª
=Adam/word2_vec/w2v_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp)Adam/word2_vec/w2v_embedding/embeddings/m*!
_output_shapes
:*
dtype0
©
%Adam/word2_vec/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/word2_vec/embedding/embeddings/m
¢
9Adam/word2_vec/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp%Adam/word2_vec/embedding/embeddings/m*!
_output_shapes
:*
dtype0
±
)Adam/word2_vec/w2v_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/word2_vec/w2v_embedding/embeddings/v
ª
=Adam/word2_vec/w2v_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp)Adam/word2_vec/w2v_embedding/embeddings/v*!
_output_shapes
:*
dtype0
©
%Adam/word2_vec/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%Adam/word2_vec/embedding/embeddings/v
¢
9Adam/word2_vec/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp%Adam/word2_vec/embedding/embeddings/v*!
_output_shapes
:*
dtype0

NoOpNoOp
ÿ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*º
value°B­ B¦

target_embedding
context_embedding
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
b
	
embeddings

regularization_losses
	variables
trainable_variables
	keras_api
b

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
d
iter

beta_1

beta_2
	decay
learning_rate	m2m3	v4v5
 

	0
1

	0
1
­
metrics
layer_regularization_losses
regularization_losses
layer_metrics
non_trainable_variables

layers
	variables
trainable_variables
 
nl
VARIABLE_VALUE"word2_vec/w2v_embedding/embeddings6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

	0

	0
­
layer_regularization_losses
metrics

regularization_losses
layer_metrics
 non_trainable_variables

!layers
	variables
trainable_variables
ki
VARIABLE_VALUEword2_vec/embedding/embeddings7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
"layer_regularization_losses
#metrics
regularization_losses
$layer_metrics
%non_trainable_variables

&layers
	variables
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
4
	)total
	*count
+	variables
,	keras_api
D
	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

+	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

0	variables

VARIABLE_VALUE)Adam/word2_vec/w2v_embedding/embeddings/mRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Adam/word2_vec/embedding/embeddings/mScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE)Adam/word2_vec/w2v_embedding/embeddings/vRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE%Adam/word2_vec/embedding/embeddings/vScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2"word2_vec/w2v_embedding/embeddingsword2_vec/embedding/embeddings*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *0
f+R)
'__inference_signature_wrapper_153941960
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
©
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6word2_vec/w2v_embedding/embeddings/Read/ReadVariableOp2word2_vec/embedding/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp=Adam/word2_vec/w2v_embedding/embeddings/m/Read/ReadVariableOp9Adam/word2_vec/embedding/embeddings/m/Read/ReadVariableOp=Adam/word2_vec/w2v_embedding/embeddings/v/Read/ReadVariableOp9Adam/word2_vec/embedding/embeddings/v/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_save_153942061
ø
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"word2_vec/w2v_embedding/embeddingsword2_vec/embedding/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1)Adam/word2_vec/w2v_embedding/embeddings/m%Adam/word2_vec/embedding/embeddings/m)Adam/word2_vec/w2v_embedding/embeddings/v%Adam/word2_vec/embedding/embeddings/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference__traced_restore_153942116ùÜ
È	
«
H__inference_embedding_layer_call_and_return_conditional_losses_153941909

inputs	/
embedding_lookup_153941903:
identity¢embedding_lookup
embedding_lookupResourceGatherembedding_lookup_153941903inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*-
_class#
!loc:@embedding_lookup/153941903*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupñ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*-
_class#
!loc:@embedding_lookup/153941903*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


1__inference_w2v_embedding_layer_call_fn_153941976

inputs	
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_1539418962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
D
Ï	
%__inference__traced_restore_153942116
file_prefixH
3assignvariableop_word2_vec_w2v_embedding_embeddings:F
1assignvariableop_1_word2_vec_embedding_embeddings:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: R
=assignvariableop_11_adam_word2_vec_w2v_embedding_embeddings_m:N
9assignvariableop_12_adam_word2_vec_embedding_embeddings_m:R
=assignvariableop_13_adam_word2_vec_w2v_embedding_embeddings_v:N
9assignvariableop_14_adam_word2_vec_embedding_embeddings_v:
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesû
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity²
AssignVariableOpAssignVariableOp3assignvariableop_word2_vec_w2v_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp1assignvariableop_1_word2_vec_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2¡
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6ª
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10£
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Å
AssignVariableOp_11AssignVariableOp=assignvariableop_11_adam_word2_vec_w2v_embedding_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Á
AssignVariableOp_12AssignVariableOp9assignvariableop_12_adam_word2_vec_embedding_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Å
AssignVariableOp_13AssignVariableOp=assignvariableop_13_adam_word2_vec_w2v_embedding_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Á
AssignVariableOp_14AssignVariableOp9assignvariableop_14_adam_word2_vec_embedding_embeddings_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¨
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15
Identity_16IdentityIdentity_15:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_16"#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


-__inference_embedding_layer_call_fn_153941992

inputs	
unknown:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_layer_call_and_return_conditional_losses_1539419092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

±
$__inference__wrapped_model_153941881
input_1	
input_2	G
2word2_vec_w2v_embedding_embedding_lookup_153941869:C
.word2_vec_embedding_embedding_lookup_153941874:
identity¢$word2_vec/embedding/embedding_lookup¢(word2_vec/w2v_embedding/embedding_lookup
word2_vec/SqueezeSqueezeinput_1*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2
word2_vec/Squeezeò
(word2_vec/w2v_embedding/embedding_lookupResourceGather2word2_vec_w2v_embedding_embedding_lookup_153941869word2_vec/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*E
_class;
97loc:@word2_vec/w2v_embedding/embedding_lookup/153941869*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02*
(word2_vec/w2v_embedding/embedding_lookupÍ
1word2_vec/w2v_embedding/embedding_lookup/IdentityIdentity1word2_vec/w2v_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*E
_class;
97loc:@word2_vec/w2v_embedding/embedding_lookup/153941869*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ23
1word2_vec/w2v_embedding/embedding_lookup/Identityå
3word2_vec/w2v_embedding/embedding_lookup/Identity_1Identity:word2_vec/w2v_embedding/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3word2_vec/w2v_embedding/embedding_lookup/Identity_1Ó
$word2_vec/embedding/embedding_lookupResourceGather.word2_vec_embedding_embedding_lookup_153941874input_2",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*A
_class7
53loc:@word2_vec/embedding/embedding_lookup/153941874*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$word2_vec/embedding/embedding_lookupÁ
-word2_vec/embedding/embedding_lookup/IdentityIdentity-word2_vec/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@word2_vec/embedding/embedding_lookup/153941874*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-word2_vec/embedding/embedding_lookup/IdentityÝ
/word2_vec/embedding/embedding_lookup/Identity_1Identity6word2_vec/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/word2_vec/embedding/embedding_lookup/Identity_1
word2_vec/einsum/EinsumEinsum<word2_vec/w2v_embedding/embedding_lookup/Identity_1:output:08word2_vec/embedding/embedding_lookup/Identity_1:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
word2_vec/einsum/EinsumÆ
IdentityIdentity word2_vec/einsum/Einsum:output:0%^word2_vec/embedding/embedding_lookup)^word2_vec/w2v_embedding/embedding_lookup*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2L
$word2_vec/embedding/embedding_lookup$word2_vec/embedding/embedding_lookup2T
(word2_vec/w2v_embedding/embedding_lookup(word2_vec/w2v_embedding/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
í*

"__inference__traced_save_153942061
file_prefixA
=savev2_word2_vec_w2v_embedding_embeddings_read_readvariableop=
9savev2_word2_vec_embedding_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopH
Dsavev2_adam_word2_vec_w2v_embedding_embeddings_m_read_readvariableopD
@savev2_adam_word2_vec_embedding_embeddings_m_read_readvariableopH
Dsavev2_adam_word2_vec_w2v_embedding_embeddings_v_read_readvariableopD
@savev2_adam_word2_vec_embedding_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¡
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B6target_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB7context_embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRtarget_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBScontext_embedding/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¨
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices«
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_word2_vec_w2v_embedding_embeddings_read_readvariableop9savev2_word2_vec_embedding_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopDsavev2_adam_word2_vec_w2v_embedding_embeddings_m_read_readvariableop@savev2_adam_word2_vec_embedding_embeddings_m_read_readvariableopDsavev2_adam_word2_vec_w2v_embedding_embeddings_v_read_readvariableop@savev2_adam_word2_vec_embedding_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*w
_input_shapesf
d: ::: : : : : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
::'#
!
_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
::'#
!
_output_shapes
::'#
!
_output_shapes
::'#
!
_output_shapes
::

_output_shapes
: 
¯
²
-__inference_word2_vec_layer_call_fn_153941926
input_1	
input_2	
unknown:
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_word2_vec_layer_call_and_return_conditional_losses_1539419152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¥

H__inference_word2_vec_layer_call_and_return_conditional_losses_153941915
input_1	
input_2	,
w2v_embedding_153941897:(
embedding_153941910:
identity¢!embedding/StatefulPartitionedCall¢%w2v_embedding/StatefulPartitionedCallk
SqueezeSqueezeinput_1*
T0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeeze©
%w2v_embedding/StatefulPartitionedCallStatefulPartitionedCallSqueeze:output:0w2v_embedding_153941897*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_1539418962'
%w2v_embedding/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_153941910*
Tin
2	*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_embedding_layer_call_and_return_conditional_losses_1539419092#
!embedding/StatefulPartitionedCallÙ
einsum/EinsumEinsum.w2v_embedding/StatefulPartitionedCall:output:0*embedding/StatefulPartitionedCall:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equation
be,bce->bc2
einsum/Einsum¶
IdentityIdentityeinsum/Einsum:output:0"^embedding/StatefulPartitionedCall&^w2v_embedding/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2N
%w2v_embedding/StatefulPartitionedCall%w2v_embedding/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
È	
«
H__inference_embedding_layer_call_and_return_conditional_losses_153941985

inputs	/
embedding_lookup_153941979:
identity¢embedding_lookup
embedding_lookupResourceGatherembedding_lookup_153941979inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*-
_class#
!loc:@embedding_lookup/153941979*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupñ
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*-
_class#
!loc:@embedding_lookup/153941979*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´	
¯
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_153941969

inputs	/
embedding_lookup_153941963:
identity¢embedding_lookupþ
embedding_lookupResourceGatherembedding_lookup_153941963inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*-
_class#
!loc:@embedding_lookup/153941963*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*-
_class#
!loc:@embedding_lookup/153941963*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¬
'__inference_signature_wrapper_153941960
input_1	
input_2	
unknown:
	unknown_0:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference__wrapped_model_1539418812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
´	
¯
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_153941896

inputs	/
embedding_lookup_153941890:
identity¢embedding_lookupþ
embedding_lookupResourceGatherembedding_lookup_153941890inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*-
_class#
!loc:@embedding_lookup/153941890*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*-
_class#
!loc:@embedding_lookup/153941890*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*è
serving_defaultÔ
;
input_10
serving_default_input_1:0	ÿÿÿÿÿÿÿÿÿ
;
input_20
serving_default_input_2:0	ÿÿÿÿÿÿÿÿÿ<
output_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:P
Ä
target_embedding
context_embedding
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
*6&call_and_return_all_conditional_losses
7_default_save_signature
8__call__"Ì

_tf_keras_model²
{"name": "word2_vec", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Word2Vec", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"class_name": "__tuple__", "items": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1024, 1]}, "int64", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1024, 5]}, "int64", "input_2"]}]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Word2Vec"}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": true, "label_smoothing": 0}, "shared_object_id": 0}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 1}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Õ
	
embeddings

regularization_losses
	variables
trainable_variables
	keras_api
*9&call_and_return_all_conditional_losses
:__call__"¶
_tf_keras_layer{"name": "w2v_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "w2v_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 16384, "output_dim": 256, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [1024]}}
Ð

embeddings
regularization_losses
	variables
trainable_variables
	keras_api
*;&call_and_return_all_conditional_losses
<__call__"±
_tf_keras_layer{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "input_dim": 16384, "output_dim": 256, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 4}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 5}, "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [1024, 5]}}
w
iter

beta_1

beta_2
	decay
learning_rate	m2m3	v4v5"
	optimizer
 "
trackable_list_wrapper
.
	0
1"
trackable_list_wrapper
.
	0
1"
trackable_list_wrapper
Ê
metrics
layer_regularization_losses
regularization_losses
layer_metrics
non_trainable_variables

layers
	variables
trainable_variables
8__call__
7_default_save_signature
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
,
=serving_default"
signature_map
7:52"word2_vec/w2v_embedding/embeddings
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
'
	0"
trackable_list_wrapper
­
layer_regularization_losses
metrics

regularization_losses
layer_metrics
 non_trainable_variables

!layers
	variables
trainable_variables
:__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
3:12word2_vec/embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
"layer_regularization_losses
#metrics
regularization_losses
$layer_metrics
%non_trainable_variables

&layers
	variables
trainable_variables
<__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ó
	)total
	*count
+	variables
,	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 6}

	-total
	.count
/
_fn_kwargs
0	variables
1	keras_api"Ï
_tf_keras_metric´{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 1}
:  (2total
:  (2count
.
)0
*1"
trackable_list_wrapper
-
+	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
-
0	variables"
_generic_user_object
<::2)Adam/word2_vec/w2v_embedding/embeddings/m
8:62%Adam/word2_vec/embedding/embeddings/m
<::2)Adam/word2_vec/w2v_embedding/embeddings/v
8:62%Adam/word2_vec/embedding/embeddings/v
¼2¹
H__inference_word2_vec_layer_call_and_return_conditional_losses_153941915ì
²
FullArgSpec
args
jself
jpair
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
2
$__inference__wrapped_model_153941881Þ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
¡2
-__inference_word2_vec_layer_call_fn_153941926ì
²
FullArgSpec
args
jself
jpair
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ö2ó
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_153941969¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Û2Ø
1__inference_w2v_embedding_layer_call_fn_153941976¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_embedding_layer_call_and_return_conditional_losses_153941985¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×2Ô
-__inference_embedding_layer_call_fn_153941992¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÕBÒ
'__inference_signature_wrapper_153941960input_1input_2"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¼
$__inference__wrapped_model_153941881	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¬
H__inference_embedding_layer_call_and_return_conditional_losses_153941985`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
-__inference_embedding_layer_call_fn_153941992S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÐ
'__inference_signature_wrapper_153941960¤	i¢f
¢ 
_ª\
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ	
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ¨
L__inference_w2v_embedding_layer_call_and_return_conditional_losses_153941969X	+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
1__inference_w2v_embedding_layer_call_fn_153941976K	+¢(
!¢

inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿÒ
H__inference_word2_vec_layer_call_and_return_conditional_losses_153941915	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ©
-__inference_word2_vec_layer_call_fn_153941926x	X¢U
N¢K
I¢F
!
input_1ÿÿÿÿÿÿÿÿÿ	
!
input_2ÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ
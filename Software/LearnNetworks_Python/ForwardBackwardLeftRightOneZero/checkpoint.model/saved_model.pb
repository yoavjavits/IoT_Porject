ІЏ
МЁ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68їХ

И
conv_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer1/kernel
Б
&conv_layer1/kernel/Read/ReadVariableOpReadVariableOpconv_layer1/kernel*&
_output_shapes
:*
dtype0
x
conv_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer1/bias
q
$conv_layer1/bias/Read/ReadVariableOpReadVariableOpconv_layer1/bias*
_output_shapes
:*
dtype0
И
conv_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_layer2/kernel
Б
&conv_layer2/kernel/Read/ReadVariableOpReadVariableOpconv_layer2/kernel*&
_output_shapes
:*
dtype0
x
conv_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_layer2/bias
q
$conv_layer2/bias/Read/ReadVariableOpReadVariableOpconv_layer2/bias*
_output_shapes
:*
dtype0
Е
hidden_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	јP*%
shared_namehidden_layer1/kernel
~
(hidden_layer1/kernel/Read/ReadVariableOpReadVariableOphidden_layer1/kernel*
_output_shapes
:	јP*
dtype0
|
hidden_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*#
shared_namehidden_layer1/bias
u
&hidden_layer1/bias/Read/ReadVariableOpReadVariableOphidden_layer1/bias*
_output_shapes
:P*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:P*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
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
Ц
Adam/conv_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/m
П
-Adam/conv_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/m*&
_output_shapes
:*
dtype0
Ж
Adam/conv_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/m

+Adam/conv_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/conv_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/m
П
-Adam/conv_layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/m*&
_output_shapes
:*
dtype0
Ж
Adam/conv_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/m

+Adam/conv_layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/m*
_output_shapes
:*
dtype0
У
Adam/hidden_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	јP*,
shared_nameAdam/hidden_layer1/kernel/m
М
/Adam/hidden_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/m*
_output_shapes
:	јP*
dtype0
К
Adam/hidden_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P**
shared_nameAdam/hidden_layer1/bias/m
Г
-Adam/hidden_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/m*
_output_shapes
:P*
dtype0
Д
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:P*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
Ц
Adam/conv_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer1/kernel/v
П
-Adam/conv_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/kernel/v*&
_output_shapes
:*
dtype0
Ж
Adam/conv_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer1/bias/v

+Adam/conv_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer1/bias/v*
_output_shapes
:*
dtype0
Ц
Adam/conv_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_layer2/kernel/v
П
-Adam/conv_layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/kernel/v*&
_output_shapes
:*
dtype0
Ж
Adam/conv_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_layer2/bias/v

+Adam/conv_layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv_layer2/bias/v*
_output_shapes
:*
dtype0
У
Adam/hidden_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	јP*,
shared_nameAdam/hidden_layer1/kernel/v
М
/Adam/hidden_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/kernel/v*
_output_shapes
:	јP*
dtype0
К
Adam/hidden_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P**
shared_nameAdam/hidden_layer1/bias/v
Г
-Adam/hidden_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer1/bias/v*
_output_shapes
:P*
dtype0
Д
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:P*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ґL
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*сK
valueзKBдK BЁK
©
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¶

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses* 
¶

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
О
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
О
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
•
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses* 
¶

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses*
•
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H_random_generator
I__call__
*J&call_and_return_all_conditional_losses* 
¶

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
д
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemЪmЫ!mЬ"mЭ<mЮ=mЯKm†Lm°vҐv£!v§"v•<v¶=vІKv®Lv©*
<
0
1
!2
"3
<4
=5
K6
L7*
<
0
1
!2
"3
<4
=5
K6
L7*

X0
Y1
Z2
[3* 
∞
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

aserving_default* 
b\
VARIABLE_VALUEconv_layer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv_layer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
X0* 
У
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 
* 
* 
b\
VARIABLE_VALUEconv_layer2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEconv_layer2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
	
Y0* 
У
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
С
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
С
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 
* 
* 
* 
d^
VARIABLE_VALUEhidden_layer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEhidden_layer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

<0
=1*

<0
=1*
	
Z0* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
	
[0* 
Ш
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
C
0
1
2
3
4
5
6
7
	8*

П0
Р1*
* 
* 
* 
* 
* 
* 
	
X0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
[0* 
* 
<

Сtotal

Тcount
У	variables
Ф	keras_api*
M

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

С0
Т1*

У	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Х0
Ц1*

Ш	variables*
Е
VARIABLE_VALUEAdam/conv_layer1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv_layer1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv_layer2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv_layer2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUEAdam/hidden_layer1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/hidden_layer1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv_layer1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv_layer1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUEAdam/conv_layer2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/conv_layer2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUEAdam/hidden_layer1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/hidden_layer1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Ф
!serving_default_conv_layer1_inputPlaceholder*/
_output_shapes
:€€€€€€€€€c+*
dtype0*$
shape:€€€€€€€€€c+
я
StatefulPartitionedCallStatefulPartitionedCall!serving_default_conv_layer1_inputconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_2100037
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
№
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&conv_layer1/kernel/Read/ReadVariableOp$conv_layer1/bias/Read/ReadVariableOp&conv_layer2/kernel/Read/ReadVariableOp$conv_layer2/bias/Read/ReadVariableOp(hidden_layer1/kernel/Read/ReadVariableOp&hidden_layer1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adam/conv_layer1/kernel/m/Read/ReadVariableOp+Adam/conv_layer1/bias/m/Read/ReadVariableOp-Adam/conv_layer2/kernel/m/Read/ReadVariableOp+Adam/conv_layer2/bias/m/Read/ReadVariableOp/Adam/hidden_layer1/kernel/m/Read/ReadVariableOp-Adam/hidden_layer1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp-Adam/conv_layer1/kernel/v/Read/ReadVariableOp+Adam/conv_layer1/bias/v/Read/ReadVariableOp-Adam/conv_layer2/kernel/v/Read/ReadVariableOp+Adam/conv_layer2/bias/v/Read/ReadVariableOp/Adam/hidden_layer1/kernel/v/Read/ReadVariableOp-Adam/hidden_layer1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_2100416
√
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv_layer1/kernelconv_layer1/biasconv_layer2/kernelconv_layer2/biashidden_layer1/kernelhidden_layer1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv_layer1/kernel/mAdam/conv_layer1/bias/mAdam/conv_layer2/kernel/mAdam/conv_layer2/bias/mAdam/hidden_layer1/kernel/mAdam/hidden_layer1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/conv_layer1/kernel/vAdam/conv_layer1/bias/vAdam/conv_layer2/kernel/vAdam/conv_layer2/bias/vAdam/hidden_layer1/kernel/vAdam/hidden_layer1/bias/vAdam/output/kernel/vAdam/output/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_2100525ро
ј
Х
(__inference_output_layer_call_fn_2100233

inputs
unknown:P
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2099440o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
Ф
Ѓ
__inference_loss_fn_3_2100294J
8output_kernel_regularizer_square_readvariableop_resource:P
identityИҐ/output/kernel/Regularizer/Square/ReadVariableOp®
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp8output_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!output/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp
т
Ґ
-__inference_conv_layer2_layer_call_fn_2100094

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€1`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€1
 
_user_specified_nameinputs
’G
ч
 __inference__traced_save_2100416
file_prefix1
-savev2_conv_layer1_kernel_read_readvariableop/
+savev2_conv_layer1_bias_read_readvariableop1
-savev2_conv_layer2_kernel_read_readvariableop/
+savev2_conv_layer2_bias_read_readvariableop3
/savev2_hidden_layer1_kernel_read_readvariableop1
-savev2_hidden_layer1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adam_conv_layer1_kernel_m_read_readvariableop6
2savev2_adam_conv_layer1_bias_m_read_readvariableop8
4savev2_adam_conv_layer2_kernel_m_read_readvariableop6
2savev2_adam_conv_layer2_bias_m_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_m_read_readvariableop8
4savev2_adam_hidden_layer1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop8
4savev2_adam_conv_layer1_kernel_v_read_readvariableop6
2savev2_adam_conv_layer1_bias_v_read_readvariableop8
4savev2_adam_conv_layer2_kernel_v_read_readvariableop6
2savev2_adam_conv_layer2_bias_v_read_readvariableop:
6savev2_adam_hidden_layer1_kernel_v_read_readvariableop8
4savev2_adam_hidden_layer1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ѓ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ў
valueќBЋ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH±
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_conv_layer1_kernel_read_readvariableop+savev2_conv_layer1_bias_read_readvariableop-savev2_conv_layer2_kernel_read_readvariableop+savev2_conv_layer2_bias_read_readvariableop/savev2_hidden_layer1_kernel_read_readvariableop-savev2_hidden_layer1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adam_conv_layer1_kernel_m_read_readvariableop2savev2_adam_conv_layer1_bias_m_read_readvariableop4savev2_adam_conv_layer2_kernel_m_read_readvariableop2savev2_adam_conv_layer2_bias_m_read_readvariableop6savev2_adam_hidden_layer1_kernel_m_read_readvariableop4savev2_adam_hidden_layer1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop4savev2_adam_conv_layer1_kernel_v_read_readvariableop2savev2_adam_conv_layer1_bias_v_read_readvariableop4savev2_adam_conv_layer2_kernel_v_read_readvariableop2savev2_adam_conv_layer2_bias_v_read_readvariableop6savev2_adam_hidden_layer1_kernel_v_read_readvariableop4savev2_adam_hidden_layer1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ю
_input_shapesМ
Й: :::::	јP:P:P:: : : : : : : : : :::::	јP:P:P::::::	јP:P:P:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	јP: 

_output_shapes
:P:$ 

_output_shapes

:P: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	јP: 

_output_shapes
:P:$ 

_output_shapes

:P: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	јP: 

_output_shapes
:P:$  

_output_shapes

:P: !

_output_shapes
::"

_output_shapes
: 
Ё
Є
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€1Ы
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€1Ѓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€1
 
_user_specified_nameinputs
Ё
Є
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€c+Ы
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€c+Ѓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
О
ј
__inference_loss_fn_0_2100261W
=conv_layer1_kernel_regularizer_square_readvariableop_resource:
identityИҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpЇ
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer1_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentity&conv_layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: }
NoOpNoOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp
е	
ћ
,__inference_sequential_layer_call_fn_2099855

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	јP
	unknown_4:P
	unknown_5:P
	unknown_6:
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2099471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
С
e
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2100121

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
¶
C__inference_output_layer_call_and_return_conditional_losses_2099440

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€О
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
Ж

„
,__inference_sequential_layer_call_fn_2099490
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	јP
	unknown_4:P
	unknown_5:P
	unknown_6:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2099471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
С
e
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099520

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Po
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€Pi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€PY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
ЅJ
Ў
G__inference_sequential_layer_call_and_return_conditional_losses_2099804
conv_layer1_input-
conv_layer1_2099754:!
conv_layer1_2099756:-
conv_layer2_2099760:!
conv_layer2_2099762:(
hidden_layer1_2099768:	јP#
hidden_layer1_2099770:P 
output_2099774:P
output_2099776:
identityИҐ#conv_layer1/StatefulPartitionedCallҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ#conv_layer2/StatefulPartitionedCallҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ%hidden_layer1/StatefulPartitionedCallҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/StatefulPartitionedCallҐ/output/kernel/Regularizer/Square/ReadVariableOpТ
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_2099754conv_layer1_2099756*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347п
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308¶
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_2099760conv_layer2_2099762*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371п
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320„
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_2099384в
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099553©
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_2099768hidden_layer1_2099770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410Х
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099520П
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_2099774output_2099776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2099440Р
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_2099754*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Р
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_2099760*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Н
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_2099768*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2099774*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ъ
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
ў
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099421

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€P[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
ґG
З
G__inference_sequential_layer_call_and_return_conditional_losses_2099471

inputs-
conv_layer1_2099348:!
conv_layer1_2099350:-
conv_layer2_2099372:!
conv_layer2_2099374:(
hidden_layer1_2099411:	јP#
hidden_layer1_2099413:P 
output_2099441:P
output_2099443:
identityИҐ#conv_layer1/StatefulPartitionedCallҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ#conv_layer2/StatefulPartitionedCallҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐ%hidden_layer1/StatefulPartitionedCallҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/StatefulPartitionedCallҐ/output/kernel/Regularizer/Square/ReadVariableOpЗ
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_2099348conv_layer1_2099350*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347п
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308¶
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_2099372conv_layer2_2099374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371п
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320„
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_2099384“
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099391°
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_2099411hidden_layer1_2099413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410г
dropout_1/PartitionedCallPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099421З
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_2099441output_2099443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2099440Р
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_2099348*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Р
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_2099372*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Н
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_2099411*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2099441*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€і
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
е	
ћ
,__inference_sequential_layer_call_fn_2099876

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	јP
	unknown_4:P
	unknown_5:P
	unknown_6:
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2099658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
ъ	
c
D__inference_dropout_layer_call_and_return_conditional_losses_2099553

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€јp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€јj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
џ
b
D__inference_dropout_layer_call_and_return_conditional_losses_2099391

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€ј\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Ё
Є
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2100111

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€1Ы
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€1Ѓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€1: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€1
 
_user_specified_nameinputs
†J
Ќ
G__inference_sequential_layer_call_and_return_conditional_losses_2099658

inputs-
conv_layer1_2099608:!
conv_layer1_2099610:-
conv_layer2_2099614:!
conv_layer2_2099616:(
hidden_layer1_2099622:	јP#
hidden_layer1_2099624:P 
output_2099628:P
output_2099630:
identityИҐ#conv_layer1/StatefulPartitionedCallҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ#conv_layer2/StatefulPartitionedCallҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ%hidden_layer1/StatefulPartitionedCallҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/StatefulPartitionedCallҐ/output/kernel/Regularizer/Square/ReadVariableOpЗ
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_layer1_2099608conv_layer1_2099610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347п
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308¶
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_2099614conv_layer2_2099616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371п
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320„
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_2099384в
dropout/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099553©
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer1_2099622hidden_layer1_2099624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410Х
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099520П
output/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_2099628output_2099630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2099440Р
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_2099608*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Р
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_2099614*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Н
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_2099622*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2099628*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ъ
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
ѓ
E
)__inference_flatten_layer_call_fn_2100126

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_2099384a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
:W S
/
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
∆
`
D__inference_flatten_layer_call_and_return_conditional_losses_2099384

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
:W S
/
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
С
e
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
т
Ґ
-__inference_conv_layer1_layer_call_fn_2100052

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€c+`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€c+: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
і
J
.__inference_max_pooling3_layer_call_fn_2100116

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
џ
b
D__inference_dropout_layer_call_and_return_conditional_losses_2100147

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€ј\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
ф	
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100218

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Po
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€Pi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€PY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
∆
`
D__inference_flatten_layer_call_and_return_conditional_losses_2100132

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€
:W S
/
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
ъ	
c
D__inference_dropout_layer_call_and_return_conditional_losses_2100159

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€јp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€јj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Џ	
–
%__inference_signature_wrapper_2100037
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	јP
	unknown_4:P
	unknown_5:P
	unknown_6:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_2099299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
Т
¶
C__inference_output_layer_call_and_return_conditional_losses_2100250

inputs0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ/output/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€О
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€©
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
£6
Й
"__inference__wrapped_model_2099299
conv_layer1_inputO
5sequential_conv_layer1_conv2d_readvariableop_resource:D
6sequential_conv_layer1_biasadd_readvariableop_resource:O
5sequential_conv_layer2_conv2d_readvariableop_resource:D
6sequential_conv_layer2_biasadd_readvariableop_resource:J
7sequential_hidden_layer1_matmul_readvariableop_resource:	јPF
8sequential_hidden_layer1_biasadd_readvariableop_resource:PB
0sequential_output_matmul_readvariableop_resource:P?
1sequential_output_biasadd_readvariableop_resource:
identityИҐ-sequential/conv_layer1/BiasAdd/ReadVariableOpҐ,sequential/conv_layer1/Conv2D/ReadVariableOpҐ-sequential/conv_layer2/BiasAdd/ReadVariableOpҐ,sequential/conv_layer2/Conv2D/ReadVariableOpҐ/sequential/hidden_layer1/BiasAdd/ReadVariableOpҐ.sequential/hidden_layer1/MatMul/ReadVariableOpҐ(sequential/output/BiasAdd/ReadVariableOpҐ'sequential/output/MatMul/ReadVariableOp™
,sequential/conv_layer1/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0“
sequential/conv_layer1/Conv2DConv2Dconv_layer1_input4sequential/conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+*
paddingSAME*
strides
†
-sequential/conv_layer1/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential/conv_layer1/BiasAddBiasAdd&sequential/conv_layer1/Conv2D:output:05sequential/conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+Ж
sequential/conv_layer1/ReluRelu'sequential/conv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€c+¬
sequential/max_pooling1/MaxPoolMaxPool)sequential/conv_layer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1*
ksize
*
paddingVALID*
strides
™
,sequential/conv_layer2/Conv2D/ReadVariableOpReadVariableOp5sequential_conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0й
sequential/conv_layer2/Conv2DConv2D(sequential/max_pooling1/MaxPool:output:04sequential/conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1*
paddingSAME*
strides
†
-sequential/conv_layer2/BiasAdd/ReadVariableOpReadVariableOp6sequential_conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential/conv_layer2/BiasAddBiasAdd&sequential/conv_layer2/Conv2D:output:05sequential/conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1Ж
sequential/conv_layer2/ReluRelu'sequential/conv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€1¬
sequential/max_pooling3/MaxPoolMaxPool)sequential/conv_layer2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
*
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  •
sequential/flatten/ReshapeReshape(sequential/max_pooling3/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј
sequential/dropout/IdentityIdentity#sequential/flatten/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€јІ
.sequential/hidden_layer1/MatMul/ReadVariableOpReadVariableOp7sequential_hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0є
sequential/hidden_layer1/MatMulMatMul$sequential/dropout/Identity:output:06sequential/hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P§
/sequential/hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp8sequential_hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Ѕ
 sequential/hidden_layer1/BiasAddBiasAdd)sequential/hidden_layer1/MatMul:product:07sequential/hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
sequential/hidden_layer1/ReluRelu)sequential/hidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
sequential/dropout_1/IdentityIdentity+sequential/hidden_layer1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€PШ
'sequential/output/MatMul/ReadVariableOpReadVariableOp0sequential_output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0≠
sequential/output/MatMulMatMul&sequential/dropout_1/Identity:output:0/sequential/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
(sequential/output/BiasAdd/ReadVariableOpReadVariableOp1sequential_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ђ
sequential/output/BiasAddBiasAdd"sequential/output/MatMul:product:00sequential/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€z
sequential/output/SoftmaxSoftmax"sequential/output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€r
IdentityIdentity#sequential/output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Љ
NoOpNoOp.^sequential/conv_layer1/BiasAdd/ReadVariableOp-^sequential/conv_layer1/Conv2D/ReadVariableOp.^sequential/conv_layer2/BiasAdd/ReadVariableOp-^sequential/conv_layer2/Conv2D/ReadVariableOp0^sequential/hidden_layer1/BiasAdd/ReadVariableOp/^sequential/hidden_layer1/MatMul/ReadVariableOp)^sequential/output/BiasAdd/ReadVariableOp(^sequential/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2^
-sequential/conv_layer1/BiasAdd/ReadVariableOp-sequential/conv_layer1/BiasAdd/ReadVariableOp2\
,sequential/conv_layer1/Conv2D/ReadVariableOp,sequential/conv_layer1/Conv2D/ReadVariableOp2^
-sequential/conv_layer2/BiasAdd/ReadVariableOp-sequential/conv_layer2/BiasAdd/ReadVariableOp2\
,sequential/conv_layer2/Conv2D/ReadVariableOp,sequential/conv_layer2/Conv2D/ReadVariableOp2b
/sequential/hidden_layer1/BiasAdd/ReadVariableOp/sequential/hidden_layer1/BiasAdd/ReadVariableOp2`
.sequential/hidden_layer1/MatMul/ReadVariableOp.sequential/hidden_layer1/MatMul/ReadVariableOp2T
(sequential/output/BiasAdd/ReadVariableOp(sequential/output/BiasAdd/ReadVariableOp2R
'sequential/output/MatMul/ReadVariableOp'sequential/output/MatMul/ReadVariableOp:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
Ё
Є
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2100069

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€c+Ы
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€c+Ѓ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€c+: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
эO
ћ
G__inference_sequential_layer_call_and_return_conditional_losses_2099938

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	јP;
-hidden_layer1_biasadd_readvariableop_resource:P7
%output_matmul_readvariableop_resource:P4
&output_biasadd_readvariableop_resource:
identityИҐ"conv_layer1/BiasAdd/ReadVariableOpҐ!conv_layer1/Conv2D/ReadVariableOpҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ"conv_layer2/BiasAdd/ReadVariableOpҐ!conv_layer2/Conv2D/ReadVariableOpҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐ$hidden_layer1/BiasAdd/ReadVariableOpҐ#hidden_layer1/MatMul/ReadVariableOpҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpҐ/output/kernel/Regularizer/Square/ReadVariableOpФ
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0±
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+*
paddingSAME*
strides
К
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€c+ђ
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1*
ksize
*
paddingVALID*
strides
Ф
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0»
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1*
paddingSAME*
strides
К
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€1ђ
max_pooling3/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Д
flatten/ReshapeReshapemax_pooling3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јi
dropout/IdentityIdentityflatten/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€јС
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ш
hidden_layer1/MatMulMatMuldropout/Identity:output:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PО
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pl
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Pr
dropout_1/IdentityIdentity hidden_layer1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
output/MatMulMatMuldropout_1/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€І
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: І
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: §
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€љ
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
п^
ћ
G__inference_sequential_layer_call_and_return_conditional_losses_2100014

inputsD
*conv_layer1_conv2d_readvariableop_resource:9
+conv_layer1_biasadd_readvariableop_resource:D
*conv_layer2_conv2d_readvariableop_resource:9
+conv_layer2_biasadd_readvariableop_resource:?
,hidden_layer1_matmul_readvariableop_resource:	јP;
-hidden_layer1_biasadd_readvariableop_resource:P7
%output_matmul_readvariableop_resource:P4
&output_biasadd_readvariableop_resource:
identityИҐ"conv_layer1/BiasAdd/ReadVariableOpҐ!conv_layer1/Conv2D/ReadVariableOpҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ"conv_layer2/BiasAdd/ReadVariableOpҐ!conv_layer2/Conv2D/ReadVariableOpҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐ$hidden_layer1/BiasAdd/ReadVariableOpҐ#hidden_layer1/MatMul/ReadVariableOpҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpҐ/output/kernel/Regularizer/Square/ReadVariableOpФ
!conv_layer1/Conv2D/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0±
conv_layer1/Conv2DConv2Dinputs)conv_layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+*
paddingSAME*
strides
К
"conv_layer1/BiasAdd/ReadVariableOpReadVariableOp+conv_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv_layer1/BiasAddBiasAddconv_layer1/Conv2D:output:0*conv_layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€c+p
conv_layer1/ReluReluconv_layer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€c+ђ
max_pooling1/MaxPoolMaxPoolconv_layer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€1*
ksize
*
paddingVALID*
strides
Ф
!conv_layer2/Conv2D/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0»
conv_layer2/Conv2DConv2Dmax_pooling1/MaxPool:output:0)conv_layer2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1*
paddingSAME*
strides
К
"conv_layer2/BiasAdd/ReadVariableOpReadVariableOp+conv_layer2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0°
conv_layer2/BiasAddBiasAddconv_layer2/Conv2D:output:0*conv_layer2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€1p
conv_layer2/ReluReluconv_layer2/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€1ђ
max_pooling3/MaxPoolMaxPoolconv_layer2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
*
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ј  Д
flatten/ReshapeReshapemax_pooling3/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€јZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?З
dropout/dropout/MulMulflatten/Reshape:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј]
dropout/dropout/ShapeShapeflatten/Reshape:output:0*
T0*
_output_shapes
:Э
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=њ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€јА
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€јВ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€јС
#hidden_layer1/MatMul/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ш
hidden_layer1/MatMulMatMuldropout/dropout/Mul_1:z:0+hidden_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PО
$hidden_layer1/BiasAdd/ReadVariableOpReadVariableOp-hidden_layer1_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
hidden_layer1/BiasAddBiasAddhidden_layer1/MatMul:product:0,hidden_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pl
hidden_layer1/ReluReluhidden_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€P\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Т
dropout_1/dropout/MulMul hidden_layer1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Pg
dropout_1/dropout/ShapeShape hidden_layer1/Relu:activations:0*
T0*
_output_shapes
:†
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€P*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=ƒ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€PГ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€PЗ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
output/MatMulMatMuldropout_1/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€І
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: І
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*conv_layer2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: §
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp,hidden_layer1_matmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Х
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€љ
NoOpNoOp#^conv_layer1/BiasAdd/ReadVariableOp"^conv_layer1/Conv2D/ReadVariableOp5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp#^conv_layer2/BiasAdd/ReadVariableOp"^conv_layer2/Conv2D/ReadVariableOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp%^hidden_layer1/BiasAdd/ReadVariableOp$^hidden_layer1/MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2H
"conv_layer1/BiasAdd/ReadVariableOp"conv_layer1/BiasAdd/ReadVariableOp2F
!conv_layer1/Conv2D/ReadVariableOp!conv_layer1/Conv2D/ReadVariableOp2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2H
"conv_layer2/BiasAdd/ReadVariableOp"conv_layer2/BiasAdd/ReadVariableOp2F
!conv_layer2/Conv2D/ReadVariableOp!conv_layer2/Conv2D/ReadVariableOp2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2L
$hidden_layer1/BiasAdd/ReadVariableOp$hidden_layer1/BiasAdd/ReadVariableOp2J
#hidden_layer1/MatMul/ReadVariableOp#hidden_layer1/MatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€c+
 
_user_specified_nameinputs
„G
Т
G__inference_sequential_layer_call_and_return_conditional_losses_2099751
conv_layer1_input-
conv_layer1_2099701:!
conv_layer1_2099703:-
conv_layer2_2099707:!
conv_layer2_2099709:(
hidden_layer1_2099715:	јP#
hidden_layer1_2099717:P 
output_2099721:P
output_2099723:
identityИҐ#conv_layer1/StatefulPartitionedCallҐ4conv_layer1/kernel/Regularizer/Square/ReadVariableOpҐ#conv_layer2/StatefulPartitionedCallҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpҐ%hidden_layer1/StatefulPartitionedCallҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpҐoutput/StatefulPartitionedCallҐ/output/kernel/Regularizer/Square/ReadVariableOpТ
#conv_layer1/StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputconv_layer1_2099701conv_layer1_2099703*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€c+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2099347п
max_pooling1/PartitionedCallPartitionedCall,conv_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308¶
#conv_layer2/StatefulPartitionedCallStatefulPartitionedCall%max_pooling1/PartitionedCall:output:0conv_layer2_2099707conv_layer2_2099709*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€1*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2099371п
max_pooling3/PartitionedCallPartitionedCall,conv_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2099320„
flatten/PartitionedCallPartitionedCall%max_pooling3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_2099384“
dropout/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099391°
%hidden_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer1_2099715hidden_layer1_2099717*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410г
dropout_1/PartitionedCallPartitionedCall.hidden_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099421З
output/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_2099721output_2099723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_output_layer_call_and_return_conditional_losses_2099440Р
4conv_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer1_2099701*&
_output_shapes
:*
dtype0Ю
%conv_layer1/kernel/Regularizer/SquareSquare<conv_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer1/kernel/Regularizer/SumSum)conv_layer1/kernel/Regularizer/Square:y:0-conv_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer1/kernel/Regularizer/mulMul-conv_layer1/kernel/Regularizer/mul/x:output:0+conv_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Р
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv_layer2_2099707*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Н
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOphidden_layer1_2099715*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ~
/output/kernel/Regularizer/Square/ReadVariableOpReadVariableOpoutput_2099721*
_output_shapes

:P*
dtype0М
 output/kernel/Regularizer/SquareSquare7output/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:Pp
output/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Х
output/kernel/Regularizer/SumSum$output/kernel/Regularizer/Square:y:0(output/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: d
output/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ч
output/kernel/Regularizer/mulMul(output/kernel/Regularizer/mul/x:output:0&output/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€і
NoOpNoOp$^conv_layer1/StatefulPartitionedCall5^conv_layer1/kernel/Regularizer/Square/ReadVariableOp$^conv_layer2/StatefulPartitionedCall5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp&^hidden_layer1/StatefulPartitionedCall7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp^output/StatefulPartitionedCall0^output/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 2J
#conv_layer1/StatefulPartitionedCall#conv_layer1/StatefulPartitionedCall2l
4conv_layer1/kernel/Regularizer/Square/ReadVariableOp4conv_layer1/kernel/Regularizer/Square/ReadVariableOp2J
#conv_layer2/StatefulPartitionedCall#conv_layer2/StatefulPartitionedCall2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp2N
%hidden_layer1/StatefulPartitionedCall%hidden_layer1/StatefulPartitionedCall2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2b
/output/kernel/Regularizer/Square/ReadVariableOp/output/kernel/Regularizer/Square/ReadVariableOp:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
ў
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100206

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€P[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
у
b
)__inference_dropout_layer_call_fn_2100142

inputs
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099553p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
і
J
.__inference_max_pooling1_layer_call_fn_2100074

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2099308Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С
e
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2100079

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
°
G
+__inference_dropout_1_layer_call_fn_2100196

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099421`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
©Е
і
#__inference__traced_restore_2100525
file_prefix=
#assignvariableop_conv_layer1_kernel:1
#assignvariableop_1_conv_layer1_bias:?
%assignvariableop_2_conv_layer2_kernel:1
#assignvariableop_3_conv_layer2_bias::
'assignvariableop_4_hidden_layer1_kernel:	јP3
%assignvariableop_5_hidden_layer1_bias:P2
 assignvariableop_6_output_kernel:P,
assignvariableop_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: G
-assignvariableop_17_adam_conv_layer1_kernel_m:9
+assignvariableop_18_adam_conv_layer1_bias_m:G
-assignvariableop_19_adam_conv_layer2_kernel_m:9
+assignvariableop_20_adam_conv_layer2_bias_m:B
/assignvariableop_21_adam_hidden_layer1_kernel_m:	јP;
-assignvariableop_22_adam_hidden_layer1_bias_m:P:
(assignvariableop_23_adam_output_kernel_m:P4
&assignvariableop_24_adam_output_bias_m:G
-assignvariableop_25_adam_conv_layer1_kernel_v:9
+assignvariableop_26_adam_conv_layer1_bias_v:G
-assignvariableop_27_adam_conv_layer2_kernel_v:9
+assignvariableop_28_adam_conv_layer2_bias_v:B
/assignvariableop_29_adam_hidden_layer1_kernel_v:	јP;
-assignvariableop_30_adam_hidden_layer1_bias_v:P:
(assignvariableop_31_adam_output_kernel_v:P4
&assignvariableop_32_adam_output_bias_v:
identity_34ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9≤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ў
valueќBЋ"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHі
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ћ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_conv_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_conv_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_2AssignVariableOp%assignvariableop_2_conv_layer2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_3AssignVariableOp#assignvariableop_3_conv_layer2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_4AssignVariableOp'assignvariableop_4_hidden_layer1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_5AssignVariableOp%assignvariableop_5_hidden_layer1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_6AssignVariableOp assignvariableop_6_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_7AssignVariableOpassignvariableop_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adam_conv_layer1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_conv_layer1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adam_conv_layer2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_conv_layer2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_hidden_layer1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_22AssignVariableOp-assignvariableop_22_adam_hidden_layer1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_output_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_output_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adam_conv_layer1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_conv_layer1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adam_conv_layer2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_conv_layer2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_29AssignVariableOp/assignvariableop_29_adam_hidden_layer1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_30AssignVariableOp-assignvariableop_30_adam_hidden_layer1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 •
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
Г
µ
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2100191

inputs1
matmul_readvariableop_resource:	јP-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€P∞
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
О
ј
__inference_loss_fn_1_2100272W
=conv_layer2_kernel_regularizer_square_readvariableop_resource:
identityИҐ4conv_layer2/kernel/Regularizer/Square/ReadVariableOpЇ
4conv_layer2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=conv_layer2_kernel_regularizer_square_readvariableop_resource*&
_output_shapes
:*
dtype0Ю
%conv_layer2/kernel/Regularizer/SquareSquare<conv_layer2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*&
_output_shapes
:}
$conv_layer2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             §
"conv_layer2/kernel/Regularizer/SumSum)conv_layer2/kernel/Regularizer/Square:y:0-conv_layer2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: i
$conv_layer2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:¶
"conv_layer2/kernel/Regularizer/mulMul-conv_layer2/kernel/Regularizer/mul/x:output:0+conv_layer2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentity&conv_layer2/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: }
NoOpNoOp5^conv_layer2/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2l
4conv_layer2/kernel/Regularizer/Square/ReadVariableOp4conv_layer2/kernel/Regularizer/Square/ReadVariableOp
°
E
)__inference_dropout_layer_call_fn_2100137

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_2099391a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
—
Э
/__inference_hidden_layer1_layer_call_fn_2100174

inputs
unknown:	јP
	unknown_0:P
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Х
љ
__inference_loss_fn_2_2100283R
?hidden_layer1_kernel_regularizer_square_readvariableop_resource:	јP
identityИҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpЈ
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp?hidden_layer1_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: f
IdentityIdentity(hidden_layer1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp
Ж

„
,__inference_sequential_layer_call_fn_2099698
conv_layer1_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:	јP
	unknown_4:P
	unknown_5:P
	unknown_6:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallconv_layer1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_2099658o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:€€€€€€€€€c+: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
/
_output_shapes
:€€€€€€€€€c+
+
_user_specified_nameconv_layer1_input
Г
µ
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2099410

inputs1
matmul_readvariableop_resource:	јP-
biasadd_readvariableop_resource:P
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐ6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	јP*
dtype0Ы
'hidden_layer1/kernel/Regularizer/SquareSquare>hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	јPw
&hidden_layer1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ™
$hidden_layer1/kernel/Regularizer/SumSum+hidden_layer1/kernel/Regularizer/Square:y:0/hidden_layer1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: k
&hidden_layer1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ђ
$hidden_layer1/kernel/Regularizer/mulMul/hidden_layer1/kernel/Regularizer/mul/x:output:0-hidden_layer1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€P∞
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp7^hidden_layer1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2p
6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp6hidden_layer1/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
у
d
+__inference_dropout_1_layer_call_fn_2100201

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_2099520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€P22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs"џL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≈
serving_default±
W
conv_layer1_inputB
#serving_default_conv_layer1_input:0€€€€€€€€€c+:
output0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ёЃ
√
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ї

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
•
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
ї

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
•
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
•
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

<kernel
=bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H_random_generator
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
у
Siter

Tbeta_1

Ubeta_2
	Vdecay
Wlearning_ratemЪmЫ!mЬ"mЭ<mЮ=mЯKm†Lm°vҐv£!v§"v•<v¶=vІKv®Lv©"
	optimizer
X
0
1
!2
"3
<4
=5
K6
L7"
trackable_list_wrapper
X
0
1
!2
"3
<4
=5
K6
L7"
trackable_list_wrapper
<
X0
Y1
Z2
[3"
trackable_list_wrapper
 
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ю2ы
,__inference_sequential_layer_call_fn_2099490
,__inference_sequential_layer_call_fn_2099855
,__inference_sequential_layer_call_fn_2099876
,__inference_sequential_layer_call_fn_2099698ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
к2з
G__inference_sequential_layer_call_and_return_conditional_losses_2099938
G__inference_sequential_layer_call_and_return_conditional_losses_2100014
G__inference_sequential_layer_call_and_return_conditional_losses_2099751
G__inference_sequential_layer_call_and_return_conditional_losses_2099804ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
„B‘
"__inference__wrapped_model_2099299conv_layer1_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
,
aserving_default"
signature_map
,:*2conv_layer1/kernel
:2conv_layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
X0"
trackable_list_wrapper
≠
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
„2‘
-__inference_conv_layer1_layer_call_fn_2100052Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2100069Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Ў2’
.__inference_max_pooling1_layer_call_fn_2100074Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2100079Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
,:*2conv_layer2/kernel
:2conv_layer2/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
≠
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
„2‘
-__inference_conv_layer2_layer_call_fn_2100094Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2100111Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ў2’
.__inference_max_pooling3_layer_call_fn_2100116Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2100121Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_flatten_layer_call_fn_2100126Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_flatten_layer_call_and_return_conditional_losses_2100132Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Р2Н
)__inference_dropout_layer_call_fn_2100137
)__inference_dropout_layer_call_fn_2100142і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
∆2√
D__inference_dropout_layer_call_and_return_conditional_losses_2100147
D__inference_dropout_layer_call_and_return_conditional_losses_2100159і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
':%	јP2hidden_layer1/kernel
 :P2hidden_layer1/bias
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ў2÷
/__inference_hidden_layer1_layer_call_fn_2100174Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ф2с
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2100191Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ф2С
+__inference_dropout_1_layer_call_fn_2100196
+__inference_dropout_1_layer_call_fn_2100201і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 2«
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100206
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100218і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
:P2output/kernel
:2output/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
'
[0"
trackable_list_wrapper
≤
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_output_layer_call_fn_2100233Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_output_layer_call_and_return_conditional_losses_2100250Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
і2±
__inference_loss_fn_0_2100261П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
і2±
__inference_loss_fn_1_2100272П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
і2±
__inference_loss_fn_2_2100283П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
і2±
__inference_loss_fn_3_2100294П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
П0
Р1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
÷B”
%__inference_signature_wrapper_2100037conv_layer1_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
X0"
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
 "
trackable_list_wrapper
'
Y0"
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
 "
trackable_list_wrapper
'
Z0"
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
 "
trackable_list_wrapper
'
[0"
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Сtotal

Тcount
У	variables
Ф	keras_api"
_tf_keras_metric
c

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
С0
Т1"
trackable_list_wrapper
.
У	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Х0
Ц1"
trackable_list_wrapper
.
Ш	variables"
_generic_user_object
1:/2Adam/conv_layer1/kernel/m
#:!2Adam/conv_layer1/bias/m
1:/2Adam/conv_layer2/kernel/m
#:!2Adam/conv_layer2/bias/m
,:*	јP2Adam/hidden_layer1/kernel/m
%:#P2Adam/hidden_layer1/bias/m
$:"P2Adam/output/kernel/m
:2Adam/output/bias/m
1:/2Adam/conv_layer1/kernel/v
#:!2Adam/conv_layer1/bias/v
1:/2Adam/conv_layer2/kernel/v
#:!2Adam/conv_layer2/bias/v
,:*	јP2Adam/hidden_layer1/kernel/v
%:#P2Adam/hidden_layer1/bias/v
$:"P2Adam/output/kernel/v
:2Adam/output/bias/v•
"__inference__wrapped_model_2099299!"<=KLBҐ?
8Ґ5
3К0
conv_layer1_input€€€€€€€€€c+
™ "/™,
*
output К
output€€€€€€€€€Є
H__inference_conv_layer1_layer_call_and_return_conditional_losses_2100069l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€c+
™ "-Ґ*
#К 
0€€€€€€€€€c+
Ъ Р
-__inference_conv_layer1_layer_call_fn_2100052_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€c+
™ " К€€€€€€€€€c+Є
H__inference_conv_layer2_layer_call_and_return_conditional_losses_2100111l!"7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€1
™ "-Ґ*
#К 
0€€€€€€€€€1
Ъ Р
-__inference_conv_layer2_layer_call_fn_2100094_!"7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€1
™ " К€€€€€€€€€1¶
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100206\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€P
p 
™ "%Ґ"
К
0€€€€€€€€€P
Ъ ¶
F__inference_dropout_1_layer_call_and_return_conditional_losses_2100218\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€P
p
™ "%Ґ"
К
0€€€€€€€€€P
Ъ ~
+__inference_dropout_1_layer_call_fn_2100196O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€P
p 
™ "К€€€€€€€€€P~
+__inference_dropout_1_layer_call_fn_2100201O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€P
p
™ "К€€€€€€€€€P¶
D__inference_dropout_layer_call_and_return_conditional_losses_2100147^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€ј
p 
™ "&Ґ#
К
0€€€€€€€€€ј
Ъ ¶
D__inference_dropout_layer_call_and_return_conditional_losses_2100159^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€ј
p
™ "&Ґ#
К
0€€€€€€€€€ј
Ъ ~
)__inference_dropout_layer_call_fn_2100137Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€ј
p 
™ "К€€€€€€€€€ј~
)__inference_dropout_layer_call_fn_2100142Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€ј
p
™ "К€€€€€€€€€ј©
D__inference_flatten_layer_call_and_return_conditional_losses_2100132a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€

™ "&Ґ#
К
0€€€€€€€€€ј
Ъ Б
)__inference_flatten_layer_call_fn_2100126T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€

™ "К€€€€€€€€€јЂ
J__inference_hidden_layer1_layer_call_and_return_conditional_losses_2100191]<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "%Ґ"
К
0€€€€€€€€€P
Ъ Г
/__inference_hidden_layer1_layer_call_fn_2100174P<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "К€€€€€€€€€P<
__inference_loss_fn_0_2100261Ґ

Ґ 
™ "К <
__inference_loss_fn_1_2100272!Ґ

Ґ 
™ "К <
__inference_loss_fn_2_2100283<Ґ

Ґ 
™ "К <
__inference_loss_fn_3_2100294KҐ

Ґ 
™ "К м
I__inference_max_pooling1_layer_call_and_return_conditional_losses_2100079ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_max_pooling1_layer_call_fn_2100074СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€м
I__inference_max_pooling3_layer_call_and_return_conditional_losses_2100121ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
.__inference_max_pooling3_layer_call_fn_2100116СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€£
C__inference_output_layer_call_and_return_conditional_losses_2100250\KL/Ґ,
%Ґ"
 К
inputs€€€€€€€€€P
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_output_layer_call_fn_2100233OKL/Ґ,
%Ґ"
 К
inputs€€€€€€€€€P
™ "К€€€€€€€€€»
G__inference_sequential_layer_call_and_return_conditional_losses_2099751}!"<=KLJҐG
@Ґ=
3К0
conv_layer1_input€€€€€€€€€c+
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ »
G__inference_sequential_layer_call_and_return_conditional_losses_2099804}!"<=KLJҐG
@Ґ=
3К0
conv_layer1_input€€€€€€€€€c+
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
G__inference_sequential_layer_call_and_return_conditional_losses_2099938r!"<=KL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€c+
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
G__inference_sequential_layer_call_and_return_conditional_losses_2100014r!"<=KL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€c+
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ †
,__inference_sequential_layer_call_fn_2099490p!"<=KLJҐG
@Ґ=
3К0
conv_layer1_input€€€€€€€€€c+
p 

 
™ "К€€€€€€€€€†
,__inference_sequential_layer_call_fn_2099698p!"<=KLJҐG
@Ґ=
3К0
conv_layer1_input€€€€€€€€€c+
p

 
™ "К€€€€€€€€€Х
,__inference_sequential_layer_call_fn_2099855e!"<=KL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€c+
p 

 
™ "К€€€€€€€€€Х
,__inference_sequential_layer_call_fn_2099876e!"<=KL?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€c+
p

 
™ "К€€€€€€€€€Њ
%__inference_signature_wrapper_2100037Ф!"<=KLWҐT
Ґ 
M™J
H
conv_layer1_input3К0
conv_layer1_input€€€€€€€€€c+"/™,
*
output К
output€€€€€€€€€
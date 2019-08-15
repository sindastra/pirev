#!/bin/bash
# pirev.sh
#
# Copyright (c) 2019 Sindastra <https://github.com/sindastra/pirev/>
# All rights reserved.
#
# This and the above copyright notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

REVISION=`awk '/^Revision/ {sub("^1000", "", $3); print $3}' /proc/cpuinfo`


if [ $REVISION = "Beta" ]; then
	MODEL='B (Beta)'
	PCB='?'
	RAM='256 MB'
	NOTES='Beta Board'
	RELEASED='Q1 2012'
if [ $REVISION = "9000c1" ]; then
	MODEL='Zero W'
	PCB='1.1'
	RAM='512 MB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q1 2017'
elif [ $REVISION = "a020a0" ]; then
	MODEL='CM3/CM3 Lite'
	PCB='1.0'
	RAM='1 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q1 2017'
elif [ $REVISION = "a02082" ]; then
	MODEL='3B'
	PCB='1.2'
	RAM='1 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q1 2016'
elif [ $REVISION = "a22082" ]; then
	MODEL='3B'
	PCB='1.2'
	RAM='1 GB'
	NOTES='(Mfg by Embest)'
	RELEASED='Q1 2016'
elif [ $REVISION = "a32082" ]; then
	MODEL='3B'
	PCB='1.2'
	RAM='1 GB'
	NOTES='(Mfg by Sony Japan)'
	RELEASED='Q4 2016'
elif [ $REVISION = "a020d3" ]; then
	MODEL='3B+'
	PCB='1.3'
	RAM='1 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q1 2018'
elif [ $REVISION = "9020e0" ]; then
	MODEL='3A+'
	PCB='1.0'
	RAM='512 MB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q4 2018'
elif [ $REVISION = "a03111" ]; then
	MODEL='4B'
	PCB='1.1'
	RAM='1 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q2 2019'
elif [ $REVISION = "b03111" ]; then
	MODEL='4B'
	PCB='1.1'
	RAM='2 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q2 2019'
elif [ $REVISION = "c03111" ]; then
	MODEL='4B'
	PCB='1.1'
	RAM='4 GB'
	NOTES='(Mfg by Sony)'
	RELEASED='Q2 2019'
else
	MODEL='???'
	PCB='???'
	RAM='???'
	NOTES='???'
	RELEASED='???'
	echo 'UNKNOWN BOARD! Please report this to https://github.com/sindastra/pirev/issues'
fi

echo "Model ${MODEL} - PCB v${PCB} - RAM ${RAM} - Released ${RELEASED} - Notes ${NOTES}"

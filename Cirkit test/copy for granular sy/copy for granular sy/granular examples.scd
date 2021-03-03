
{PSinGrain.ar(440, 0.1, 0.2)}.play;

{SinOsc.ar([440, 440])*EnvGen.ar(Env([0,1,0],[0.05, 0.05]))*0.2}.play;

(
var minfreq = 110;
var maxfreq = 1760;
var amp = 0.01;
var dur = 0.1;
{
1000.do({
		{PSinGrain.ar(rrand(minfreq, maxfreq), dur, amp)}.play;
		0.001.wait;
})
}.fork;
)


(
var minfreq = 220;
var maxfreq = 1760;
var amp = 0.2;
var dur = 0.1;
{
1000.do({
		{SinOsc.ar(rrand(minfreq, maxfreq)) * EnvGen.ar(Env([0,1,0],[dur/2, dur/2]), doneAction:2)*amp}.play;

		rrand(0.001, 0.1).wait;
})
}.fork;
)


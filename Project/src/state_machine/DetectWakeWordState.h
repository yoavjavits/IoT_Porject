#ifndef _detect_wake_word_state_h_
#define _detect_wake_word_state_h_

#include "States.h"

class I2SSampler;
class NeuralNetwork;
class AudioProcessorWakeWord;

class DetectWakeWordState : public State
{
private:
    I2SSampler *m_sample_provider;
    NeuralNetwork *m_nn;
    AudioProcessorWakeWord *m_audio_processor;

    unsigned long m_last_detection;

public:
    DetectWakeWordState(I2SSampler *sample_provider);
    void enterState();
    bool run();
    void exitState();
};

#endif
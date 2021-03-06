import numpy as np
import random


class Gen_Data_loader():
    def __init__(self, batch_size,length):
        self.batch_size = batch_size
        self.token_stream = []
        self.length = length
        self.max_length = 100000
    def create_batches(self, data_file):
        self.token_stream = []
        with open(data_file, 'r') as f:
            for line in f:
                line = line.strip()
                line = line.split()
                parse_line = [int(x) for x in line]
                if len(parse_line) < self.length:
                  parse_line = parse_line + [0] * (self.length - len(parse_line))
                elif len(parse_line) > self.length:
                  parse_line = parse_line[:self.length]
                self.token_stream.append(parse_line)
                if len(self.token_stream) > self.max_length:
                  break

        self.num_batch = int(len(self.token_stream) / self.batch_size)
        self.token_stream = self.token_stream[:self.num_batch * self.batch_size]
        self.sequence_batch = np.split(np.array(self.token_stream), self.num_batch, 0)
        self.pointer = 0

    def next_batch(self):
        ret = self.sequence_batch[self.pointer]
        self.pointer = (self.pointer + 1) % self.num_batch
        return ret

    def reset_pointer(self):
        self.pointer = 0


class Dis_dataloader():
    def __init__(self, batch_size,length):
        self.batch_size = batch_size
        self.sentences = np.array([])
        self.labels = np.array([])
        self.length = length
        self.max_length = 100000
    def load_train_data(self, positive_file, negative_file):
        # Load data
        positive_examples = []
        negative_examples = []
        with open(positive_file)as fin:
            for line in fin:
                line = line.strip()
                line = line.split()
                parse_line = [int(x) for x in line]
                if len(parse_line) < self.length:
                  parse_line = parse_line + [0] * (self.length - len(parse_line))
                elif len(parse_line) > self.length:
                  parse_line = parse_line[:self.length]
                positive_examples.append(parse_line)
                if len(positive_examples) > self.max_length:
                  break;
        with open(negative_file)as fin:
            for line in fin:
                line = line.strip()
                line = line.split()
                parse_line = [int(x) for x in line]
                if len(parse_line) == self.length:
                  negative_examples.append(parse_line)
                  if len(negative_examples) > self.max_length:
                    break;
        positive_examples = random.sample(positive_examples, 2000)
        self.sentences = np.array(positive_examples + negative_examples)

        # Generate labels
        positive_labels = [[0, 1] for _ in positive_examples]
        negative_labels = [[1, 0] for _ in negative_examples]
        self.labels = np.concatenate([positive_labels, negative_labels], 0)

        # Shuffle the data
        shuffle_indices = np.random.permutation(np.arange(len(self.labels)))
        self.sentences = self.sentences[shuffle_indices]
        self.labels = self.labels[shuffle_indices]

        # Split batches
        self.num_batch = int(len(self.labels) / self.batch_size)
        self.sentences = self.sentences[:self.num_batch * self.batch_size]
        self.labels = self.labels[:self.num_batch * self.batch_size]
        self.sentences_batches = np.split(self.sentences, self.num_batch, 0)
        self.labels_batches = np.split(self.labels, self.num_batch, 0)

        self.pointer = 0


    def next_batch(self):
        ret = self.sentences_batches[self.pointer], self.labels_batches[self.pointer]
        self.pointer = (self.pointer + 1) % self.num_batch
        return ret

    def reset_pointer(self):
        self.pointer = 0


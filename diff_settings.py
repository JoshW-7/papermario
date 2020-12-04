#!/usr/bin/env python3

def apply(config, args):
    config['baseimg'] = 'baserom.z64'
    config['myimg'] = 'papermario.z64'
    config['mapfile'] = 'build/papermario.map'
    config['source_directories'] = ['.']
    config['makeflags'] = ['COMPARE=0', 'WATCH_INCLUDES=0']

/* -*- Mode: IDL; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * The origin of this IDL file is
 * http://dev.w3.org/2011/webrtc/editor/getusermedia.html
 *
 * Copyright © 2012 W3C® (MIT, ERCIM, Keio), All Rights Reserved. W3C
 * liability, trademark and document use rules apply.
 */

// Important! Do not ever add members that might need tracing (e.g. object)
// to MediaTrackConstraintSet

enum VideoFacingModeEnum {
    "user",
    "environment",
    "left",
    "right"
};

enum SupportedVideoConstraints {
    "facingMode"
};

enum SupportedAudioConstraints {
    "dummy"
};

dictionary MediaTrackConstraintSet {
    ConstrainVideoFacingMode facingMode;
};

dictionary MediaTrackConstraints : MediaTrackConstraintSet {
    sequence<DOMString> require;
    sequence<MediaTrackConstraintSet> advanced;
};

typedef VideoFacingModeEnum ConstrainVideoFacingMode;
// TODO: Bug 767924 sequences in unions
//typedef (VideoFacingModeEnum or sequence<VideoFacingModeEnum>) ConstrainVideoFacingMode;

interface MediaStreamTrack {
    readonly    attribute DOMString             kind;
    readonly    attribute DOMString             id;
    readonly    attribute DOMString             label;
                attribute boolean               enabled;
//    readonly    attribute MediaStreamTrackState readyState;
//    readonly    attribute SourceTypeEnum        sourceType;
//    readonly    attribute DOMString             sourceId;
//                attribute EventHandler          onstarted;
//                attribute EventHandler          onmute;
//                attribute EventHandler          onunmute;
//                attribute EventHandler          onended;
//    any                    getConstraint (DOMString constraintName, optional boolean mandatory = false);
//    void                   setConstraint (DOMString constraintName, any constraintValue, optional boolean mandatory = false);
//    MediaTrackConstraints? constraints ();
//    void                   applyConstraints (MediaTrackConstraints constraints);
//    void                   prependConstraint (DOMString constraintName, any constraintValue);
//    void                   appendConstraint (DOMString constraintName, any constraintValue);
//                attribute EventHandler          onoverconstrained;
//    void                   stop ();
};

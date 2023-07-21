using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace The.Public.Road.RNThePublicRoad
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNThePublicRoadModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNThePublicRoadModule"/>.
        /// </summary>
        internal RNThePublicRoadModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNThePublicRoad";
            }
        }
    }
}

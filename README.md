LoadR
=====

Loads custom SWF in Flite.

SWF Structure
=====

The SWF must implements ISwf interface in order to work properly within Flite's environment.

iswf.swc is located in the swc folder.

Tracking
=====

Clicks: track('click', [message])

Custom: track('custom', [message])

Message: track('message', [message])
Use this, if you need to trigger a Flite components' action from your SWF. Example: You've created a custom animation in your SWF, when the intro is done you want to play a video using our Flite Video Player. Simply use track('message', 'intro_done') in your SWF. Then add an Action to the VP component, where the trigger is message 'intro_done' and the type is Layer-defined 'vp' and 'play'.

Exit links: track('navigateToURL', [url])

Catch
=====

The public catch function allows you to trigger actions in your SWF by broadcasting a message from any Flite components.

Important note
=====

The SWF file needs to be located on the ads server. 
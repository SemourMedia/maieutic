# framework/core/llm/adapter.py

class LLMAdapter:
    def __init__(self, provider="antigravity"):
        self.provider = provider
        
    def complete(self, prompt, context, persona):
        """
        Generic wrapper.
        If provider == 'antigravity': use proprietary SDK.
        If provider == 'cursor': use standard stdout/stdin hooks.
        If provider == 'ollama': use local API.
        """
        # Simulation for the "Hello World" test
        print(f"[LLMAdapter] Generating response for persona: {persona}")
        print(f"[LLMAdapter] Context length: {len(context)}")
        
        # In a real scenario, this would call the LLM. 
        # For now, we return a mock response based on the prompt to facilitate the loop.
        
        if "project_name" in prompt:
            return '{"project_name": "hello_world", "intent": "A simple hello world script", "stack": ["python"], "risk_level": "low"}'
        
        return "I am the Dreamer. Tell me what you want to build."
